/*
   +----------------------------------------------------------------------+
   | PHP Version 4                                                        |
   +----------------------------------------------------------------------+
   | Copyright (c) 1997-2003 The PHP Group                                |
   +----------------------------------------------------------------------+
   | This source file is subject to version 2.02 of the PHP license,      |
   | that is bundled with this package in the file LICENSE, and is        |
   | available at through the world-wide-web at                           |
   | http://www.php.net/license/2_02.txt.                                 |
   | If you did not receive a copy of the PHP license and are unable to   |
   | obtain it through the world-wide-web, please send a note to          |
   | license@php.net so we can mail you a copy immediately.               |
   +----------------------------------------------------------------------+
   | Author: Stig S�ther Bakken <ssb@fast.no>                             |
   +----------------------------------------------------------------------+
*/

/* $Id: php_ext_syslog.h,v 1.7.8.1 2002/12/31 16:35:33 sebastian Exp $ */

#ifndef PHP_EXT_SYSLOG_H
#define PHP_EXT_SYSLOG_H

#ifdef HAVE_SYSLOG_H

#include "php_syslog.h"

PHP_MINIT_FUNCTION(syslog);
PHP_RINIT_FUNCTION(syslog);
PHP_RSHUTDOWN_FUNCTION(syslog);

PHP_FUNCTION(openlog);
PHP_FUNCTION(syslog);
PHP_FUNCTION(closelog);
PHP_FUNCTION(define_syslog_variables);

#endif

#endif /* PHP_EXT_SYSLOG_H */
