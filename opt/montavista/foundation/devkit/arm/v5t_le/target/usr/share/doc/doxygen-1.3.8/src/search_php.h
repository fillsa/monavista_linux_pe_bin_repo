"function readInt($file)\n"
"{\n"
"  $b1 = ord(fgetc($file)); $b2 = ord(fgetc($file));\n"
"  $b3 = ord(fgetc($file)); $b4 = ord(fgetc($file));\n"
"  return ($b1<<24)|($b2<<16)|($b3<<8)|$b4;\n"
"}\n"
"\n"
"function readString($file)\n"
"{\n"
"  $result=\"\";\n"
"  while (ord($c=fgetc($file))) $result.=$c;\n"
"  return $result;\n"
"}\n"
"\n"
"function readHeader($file)\n"
"{\n"
"    $header =fgetc($file); $header.=fgetc($file);\n"
"    $header.=fgetc($file); $header.=fgetc($file);\n"
"    return $header;\n"
"}\n"
"\n"
"function computeIndex($word)\n"
"{\n"
"  if (strlen($word)<2) return -1;\n"
"  // high char of the index\n"
"  $hi = ord($word{0});\n"
"  if ($hi==0) return -1;\n"
"  // low char of the index\n"
"  $lo = ord($word{1});\n"
"  if ($lo==0) return -1;\n"
"  // return index\n"
"  return $hi*256+$lo;\n"
"}\n"
"\n"
"function search($file,$word,&$statsList)\n"
"{\n"
"  $index = computeIndex($word);\n"
"  if ($index!=-1) // found a valid index\n"
"  {\n"
"    fseek($file,$index*4+4); // 4 bytes per entry, skip header\n"
"    $index = readInt($file);\n"
"    if ($index) // found words matching first two characters\n"
"    {\n"
"      $start=sizeof($statsList);\n"
"      $count=$start;\n"
"      fseek($file,$index);\n"
"      $w = readString($file);\n"
"      while ($w)\n"
"      {\n"
"        $statIdx = readInt($file);\n"
"        if ($word==substr($w,0,strlen($word)))\n"
"        { // found word that matches (as substring)\n"
"          $statsList[$count++]=array(\n"
"              \"word\"=>$word,\n"
"              \"match\"=>$w,\n"
"              \"index\"=>$statIdx,\n"
"              \"full\"=>strlen($w)==strlen($word),\n"
"              \"docs\"=>array()\n"
"              );\n"
"        }\n"
"        $w = readString($file);\n"
"      }\n"
"      $totalFreq=0;\n"
"      for ($count=$start;$count<sizeof($statsList);$count++)\n"
"      {\n"
"        $statInfo = &$statsList[$count];\n"
"        fseek($file,$statInfo[\"index\"]); \n"
"        $numDocs = readInt($file);\n"
"        $docInfo = array();\n"
"        // read docs info + occurrence frequency of the word\n"
"        for ($i=0;$i<$numDocs;$i++)\n"
"        {\n"
"          $idx=readInt($file); \n"
"          $freq=readInt($file); \n"
"          $docInfo[$i]=array(\"idx\"=>$idx,\"freq\"=>$freq,\"rank\"=>0.0);\n"
"          $totalFreq+=$freq;\n"
"          if ($statInfo[\"full\"]) $totalFreq+=$freq;\n"
"        }\n"
"        // read name an url info for the doc\n"
"        for ($i=0;$i<$numDocs;$i++)\n"
"        {\n"
"          fseek($file,$docInfo[$i][\"idx\"]);\n"
"          $docInfo[$i][\"name\"]=readString($file);\n"
"          $docInfo[$i][\"url\"]=readString($file);\n"
"        }\n"
"        $statInfo[\"docs\"]=$docInfo;\n"
"      }\n"
"      for ($count=$start;$count<sizeof($statsList);$count++)\n"
"      {\n"
"        $statInfo = &$statsList[$count];\n"
"        for ($i=0;$i<sizeof($statInfo[\"docs\"]);$i++)\n"
"        {\n"
"          $docInfo = &$statInfo[\"docs\"];\n"
"          // compute frequency rank of the word in each doc\n"
"          $statInfo[\"docs\"][$i][\"rank\"]=\n"
"            (float)$docInfo[$i][\"freq\"]/$totalFreq;\n"
"        }\n"
"      }\n"
"    }\n"
"  }\n"
"  return $statsList;\n"
"}\n"
"\n"
"function combine_results($results,&$docs)\n"
"{\n"
"  foreach ($results as $wordInfo)\n"
"  {\n"
"    $docsList = &$wordInfo[\"docs\"];\n"
"    foreach ($docsList as $di)\n"
"    {\n"
"      $key=$di[\"url\"];\n"
"      $rank=$di[\"rank\"];\n"
"      if (in_array($key, array_keys($docs)))\n"
"      {\n"
"        $docs[$key][\"rank\"]+=$rank;\n"
"        $docs[$key][\"rank\"]*=2; // multiple matches increases rank \n"
"      }\n"
"      else\n"
"      {\n"
"        $docs[$key] = array(\"url\"=>$key,\n"
"            \"name\"=>$di[\"name\"],\n"
"            \"rank\"=>$rank\n"
"            );\n"
"      }\n"
"      $docs[$key][\"words\"][] = array(\n"
"               \"word\"=>$wordInfo[\"word\"],\n"
"               \"match\"=>$wordInfo[\"match\"],\n"
"               \"freq\"=>$di[\"freq\"]\n"
"               );\n"
"    }\n"
"  }\n"
"  return $docs;\n"
"}\n"
"\n"
"function normalize_ranking(&$docs)\n"
"{\n"
"  $maxRank = 0.0000001;\n"
"  // compute maximal rank\n"
"  foreach ($docs as $doc) \n"
"  {\n"
"    if ($doc[\"rank\"]>$maxRank)\n"
"    {\n"
"      $maxRank=$doc[\"rank\"];\n"
"    }\n"
"  }\n"
"  reset($docs);\n"
"  // normalize rankings\n"
"  while (list ($key, $val) = each ($docs)) \n"
"  {\n"
"    $docs[$key][\"rank\"]*=100/$maxRank;\n"
"  }\n"
"}\n"
"\n"
"function filter_results($docs,&$requiredWords,&$forbiddenWords)\n"
"{\n"
"  $filteredDocs=array();\n"
"  while (list ($key, $val) = each ($docs)) \n"
"  {\n"
"    $words = &$docs[$key][\"words\"];\n"
"    $copy=1; // copy entry by default\n"
"    if (sizeof($requiredWords)>0)\n"
"    {\n"
"      foreach ($requiredWords as $reqWord)\n"
"      {\n"
"        $found=0;\n"
"        foreach ($words as $wordInfo)\n"
"        { \n"
"          $found = $wordInfo[\"word\"]==$reqWord;\n"
"          if ($found) break;\n"
"        }\n"
"        if (!$found) \n"
"        {\n"
"          $copy=0; // document contains none of the required words\n"
"          break;\n"
"        }\n"
"      }\n"
"    }\n"
"    if (sizeof($forbiddenWords)>0)\n"
"    {\n"
"      foreach ($words as $wordInfo)\n"
"      {\n"
"        if (in_array($wordInfo[\"word\"],$forbiddenWords))\n"
"        {\n"
"          $copy=0; // document contains a forbidden word\n"
"          break;\n"
"        }\n"
"      }\n"
"    }\n"
"    if ($copy) $filteredDocs[$key]=$docs[$key];\n"
"  }\n"
"  return $filteredDocs;\n"
"}\n"
"\n"
"function compare_rank($a,$b)\n"
"{\n"
"  if ($a[\"rank\"] == $b[\"rank\"]) \n"
"  {\n"
"    return 0;\n"
"  }\n"
"  return ($a[\"rank\"]>$b[\"rank\"]) ? -1 : 1; \n"
"}\n"
"\n"
"function sort_results($docs,&$sorted)\n"
"{\n"
"  $sorted = $docs;\n"
"  usort($sorted,\"compare_rank\");\n"
"  return $sorted;\n"
"}\n"
"\n"
"function report_results(&$docs)\n"
"{\n"
"  echo \"<table cellspacing=\\\"2\\\">\\n\";\n"
"  echo \"  <tr>\\n\";\n"
"  echo \"    <td colspan=\\\"2\\\"><h2>\".search_results().\"</h2></td>\\n\";\n"
"  echo \"  </tr>\\n\";\n"
"  $numDocs = sizeof($docs);\n"
"  if ($numDocs==0)\n"
"  {\n"
"    echo \"  <tr>\\n\";\n"
"    echo \"    <td colspan=\\\"2\\\">\".matches_text(0).\"</td>\\n\";\n"
"    echo \"  </tr>\\n\";\n"
"  }\n"
"  else\n"
"  {\n"
"    echo \"  <tr>\\n\";\n"
"    echo \"    <td colspan=\\\"2\\\">\".matches_text($numDocs);\n"
"    echo \"\\n\";\n"
"    echo \"    </td>\\n\";\n"
"    echo \"  </tr>\\n\";\n"
"    $num=1;\n"
"    foreach ($docs as $doc)\n"
"    {\n"
"      echo \"  <tr>\\n\";\n"
"      echo \"    <td align=\\\"right\\\">$num.</td>\";\n"
"      echo     \"<td><a class=\\\"el\\\" href=\\\"\".$doc[\"url\"].\"\\\">\".$doc[\"name\"].\"</a></td>\\n\";\n"
"      echo \"  <tr>\\n\";\n"
"      echo \"    <td></td><td class=\\\"tiny\\\">\".report_matches().\" \";\n"
"      foreach ($doc[\"words\"] as $wordInfo)\n"
"      {\n"
"        $word = $wordInfo[\"word\"];\n"
"        $matchRight = substr($wordInfo[\"match\"],strlen($word));\n"
"        echo \"<b>$word</b>$matchRight(\".$wordInfo[\"freq\"].\") \";\n"
"      }\n"
"      echo \"    </td>\\n\";\n"
"      echo \"  </tr>\\n\";\n"
"      $num++;\n"
"    }\n"
"  }\n"
"  echo \"</table>\\n\";\n"
"}\n"
"\n"
"function main()\n"
"{\n"
"  if(strcmp('4.1.0', phpversion()) > 0) \n"
"  {\n"
"    die(\"Error: PHP version 4.1.0 or above required!\");\n"
"  }\n"
"  if (!($file=fopen(\"search.idx\",\"rb\"))) \n"
"  {\n"
"    die(\"Error: Search index file could NOT be opened!\");\n"
"  }\n"
"  if (readHeader($file)!=\"DOXS\")\n"
"  {\n"
"    die(\"Error: Header of index file is invalid!\");\n"
"  }\n"
"  $query=\"\";\n"
"  if (array_key_exists(\"query\", $_GET))\n"
"  {\n"
"    $query=$_GET[\"query\"];\n"
"  }\n"
"  echo \"<input class=\\\"search\\\" type=\\\"text\\\" name=\\\"query\\\" value=\\\"$query\\\" size=\\\"20\\\" accesskey=\\\"s\\\"/>\\n\";\n"
"  echo \"</span>\\n\";\n"
"  echo \"</form>\\n\";\n"
"  echo \"</div>\\n\";\n"
"  $results = array();\n"
"  $requiredWords = array();\n"
"  $forbiddenWords = array();\n"
"  $foundWords = array();\n"
"  $word=strtok($query,\" \");\n"
"  while ($word) // for each word in the search query\n"
"  {\n"
"    if (($word{0}=='+')) { $word=substr($word,1); $requiredWords[]=$word; }\n"
"    if (($word{0}=='-')) { $word=substr($word,1); $forbiddenWords[]=$word; }\n"
"    if (!in_array($word,$foundWords))\n"
"    {\n"
"      $foundWords[]=$word;\n"
"      search($file,$word,$results);\n"
"    }\n"
"    $word=strtok(\" \");\n"
"  }\n"
"  $docs = array();\n"
"  combine_results($results,$docs);\n"
"  // filter out documents with forbidden word or that do not contain\n"
"  // required words\n"
"  $filteredDocs = filter_results($docs,$requiredWords,$forbiddenWords);\n"
"  // normalize rankings so they are in the range [0-100]\n"
"  normalize_ranking($filteredDocs);\n"
"  // sort the results based on rank\n"
"  $sorted = array();\n"
"  sort_results($filteredDocs,$sorted);\n"
"  // report results to the user\n"
"  report_results($sorted);\n"
"  fclose($file);\n"
"}\n"
"\n"
"main();\n"
"\n"
