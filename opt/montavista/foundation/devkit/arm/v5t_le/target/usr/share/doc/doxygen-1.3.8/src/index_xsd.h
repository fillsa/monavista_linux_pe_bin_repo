"<?xml version='1.0' encoding='utf-8' ?>\n"
"<xsd:schema xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">\n"
"  <xsd:element name=\"doxygenindex\" type=\"DoxygenType\"/>\n"
"\n"
"  <xsd:complexType name=\"DoxygenType\">\n"
"    <xsd:sequence>\n"
"      <xsd:element name=\"compound\" type=\"CompoundType\" minOccurs=\"0\" maxOccurs=\"unbounded\"/>\n"
"    </xsd:sequence>\n"
"    <xsd:attribute name=\"version\" type=\"xsd:string\" use=\"required\"/>\n"
"  </xsd:complexType>\n"
"\n"
"  <xsd:complexType name=\"CompoundType\">\n"
"    <xsd:sequence>\n"
"      <xsd:element name=\"name\" type=\"xsd:string\"/>\n"
"      <xsd:element name=\"member\" type=\"MemberType\" minOccurs=\"0\" maxOccurs=\"unbounded\"/>\n"
"    </xsd:sequence>\n"
"    <xsd:attribute name=\"refid\" type=\"xsd:Name\" use=\"required\"/>\n"
"    <xsd:attribute name=\"kind\" type=\"CompoundKind\" use=\"required\"/>\n"
"  </xsd:complexType>\n"
"\n"
"  <xsd:complexType name=\"MemberType\">\n"
"    <xsd:sequence>\n"
"      <xsd:element name=\"name\" type=\"xsd:string\"/>\n"
"    </xsd:sequence>\n"
"    <xsd:attribute name=\"refid\" type=\"xsd:Name\" use=\"required\"/>\n"
"    <xsd:attribute name=\"kind\" type=\"MemberKind\" use=\"required\"/>\n"
"  </xsd:complexType>\n"
"  \n"
"  <xsd:simpleType name=\"CompoundKind\">\n"
"    <xsd:restriction base=\"xsd:string\">\n"
"      <xsd:enumeration value=\"class\"/>\n"
"      <xsd:enumeration value=\"struct\"/>\n"
"      <xsd:enumeration value=\"union\"/>\n"
"      <xsd:enumeration value=\"interface\"/>\n"
"      <xsd:enumeration value=\"protocol\"/>\n"
"      <xsd:enumeration value=\"category\"/>\n"
"      <xsd:enumeration value=\"exception\"/>\n"
"      <xsd:enumeration value=\"file\"/>\n"
"      <xsd:enumeration value=\"namespace\"/>\n"
"      <xsd:enumeration value=\"group\"/>\n"
"      <xsd:enumeration value=\"page\"/>\n"
"      <xsd:enumeration value=\"example\"/>\n"
"    </xsd:restriction>\n"
"  </xsd:simpleType>\n"
"\n"
"  <xsd:simpleType name=\"MemberKind\">\n"
"    <xsd:restriction base=\"xsd:string\">\n"
"      <xsd:enumeration value=\"define\"/>\n"
"      <xsd:enumeration value=\"property\"/>\n"
"      <xsd:enumeration value=\"event\"/>\n"
"      <xsd:enumeration value=\"variable\"/>\n"
"      <xsd:enumeration value=\"typedef\"/>\n"
"      <xsd:enumeration value=\"enum\"/>\n"
"      <xsd:enumeration value=\"enumvalue\"/>\n"
"      <xsd:enumeration value=\"function\"/>\n"
"      <xsd:enumeration value=\"signal\"/>\n"
"      <xsd:enumeration value=\"prototype\"/>\n"
"      <xsd:enumeration value=\"friend\"/>\n"
"      <xsd:enumeration value=\"dcop\"/>\n"
"      <xsd:enumeration value=\"slot\"/>\n"
"    </xsd:restriction>\n"
"  </xsd:simpleType>\n"
"\n"
"</xsd:schema>\n"
"\n"
