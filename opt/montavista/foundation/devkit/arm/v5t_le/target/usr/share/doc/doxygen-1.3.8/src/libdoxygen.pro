#
# This file was generated from libdoxygen.pro.in on Sat Jul 23 01:44:27 PDT 2005
#

#
# $Id: libdoxygen.pro.in,v 1.1 2001/03/19 19:27:41 root Exp $
#
# Copyright (C) 1997-2004 by Dimitri van Heesch.
#
# Permission to use, copy, modify, and distribute this software and its
# documentation under the terms of the GNU General Public License is hereby 
# granted. No representations are made about the suitability of this software 
# for any purpose. It is provided "as is" without express or implied warranty.
# See the GNU General Public License for more details.
#
# Documents produced by Doxygen are derivative works derived from the
# input used in their production; they are not affected by this license.
#
# TMake project file for doxygen

TEMPLATE     =	libdoxygen.t
CONFIG       =	console warn_on staticlib release
HEADERS      =	bufstr.h \
                classdef.h \
                classlist.h \
                cmdmapper.h \
                code.h \
		commentcnv.h \
                compound_xsd.h \
                config.h \
		constexp.h \
		cppvalue.h \
		debug.h \
                declinfo.h \
                defargs.h \
                defgen.h \
                define.h \
                definition.h \
                diagram.h \
                docparser.h \
                doctokenizer.h \
                docvisitor.h \
		dot.h \
		doxygen.h \
		entry.h \
		example.h \
		filedef.h \
		filename.h \
		formula.h \
		ftvhelp.h \
		groupdef.h \
		htmlattrib.h \
                htmldocvisitor.h \
		htmlgen.h \
		htmlhelp.h \
		image.h \
		index.h \
                index_xsd.h \
		instdox.h \
		language.h \
                latexdocvisitor.h \
		latexgen.h \
		logos.h \
		mandocvisitor.h \
		mangen.h \
		memberdef.h \
		membergroup.h \
		memberlist.h \
		membername.h \
		message.h \
		namespacedef.h \
		outputgen.h \
		outputlist.h \
		pagedef.h \
		perlmodgen.h \
                pngenc.h \
		pre.h \
                printdocvisitor.h \
		qtbc.h \
		reflist.h \
                rtfdocvisitor.h \
		rtfgen.h \
		rtfstyle.h \
		scanner.h \
		searchindex.h \
		search_php.h \
		section.h \
		sortdict.h \
		tagreader.h \
		translator.h \
		translator_adapter.h \
		translator_br.h \
		translator_ca.h \
		translator_cn.h \
		translator_cz.h \
		translator_de.h \
		translator_dk.h \
		translator_en.h \
		translator_es.h \
		translator_fi.h \
		translator_fr.h \
		translator_gr.h \
		translator_hr.h \
		translator_hu.h \
		translator_it.h \
		translator_je.h \
		translator_jp.h \
		translator_ke.h \
		translator_kr.h \
		translator_nl.h \
		translator_no.h \
		translator_pl.h \
		translator_pt.h \
		translator_ro.h \
		translator_ru.h \
		translator_se.h \
		translator_si.h \
		translator_sk.h \
		translator_sr.h \
		translator_tw.h \
		translator_ua.h \
		translator_za.h \
		unistd.h \
		util.h \
		version.h \
		xmldocvisitor.h \
                xmlgen.h
SOURCES      =	ce_lex.cpp \
                ce_parse.cpp \
		classdef.cpp \
		classlist.cpp \
                cmdmapper.cpp \
		code.cpp \
		commentcnv.cpp \
		cppvalue.cpp \
		debug.cpp \
                defgen.cpp \
		declinfo.cpp \
		defargs.cpp \
		define.cpp \
		definition.cpp \
		diagram.cpp \
                docparser.cpp \
                doctokenizer.cpp \
		dot.cpp \
		doxygen.cpp \
		entry.cpp \
		filedef.cpp \
		filename.cpp \
		formula.cpp \
		ftvhelp.cpp \
		groupdef.cpp \
                htmldocvisitor.cpp \
		htmlgen.cpp \
		htmlhelp.cpp \
		image.cpp \
		index.cpp \
		instdox.cpp \
		language.cpp \
                latexdocvisitor.cpp \
		latexgen.cpp \
		logos.cpp \
		mandocvisitor.cpp \
		mangen.cpp \
		memberdef.cpp \
		membergroup.cpp \
		memberlist.cpp \
		membername.cpp \
		message.cpp \
		namespacedef.cpp \
		outputgen.cpp \
		outputlist.cpp \
		pagedef.cpp \
		perlmodgen.cpp \
                pngenc.cpp \
		pre.cpp \
		reflist.cpp \
                rtfdocvisitor.cpp \
		rtfgen.cpp \
		rtfstyle.cpp \
		scanner.cpp \
		searchindex.cpp \
		tagreader.cpp \
		translator.cpp \
		util.cpp \
		version.cpp \
		xmldocvisitor.cpp \
                xmlgen.cpp 

win32:TMAKE_CXXFLAGS       += -DQT_NODLL 
win32-msvc:TMAKE_CXXFLAGS  += -Zm200
win32-g++:TMAKE_CXXFLAGS   += -fno-exceptions -fno-rtti
INCLUDEPATH                += ../qtools
INCLUDEPATH                += ../libmd5
win32:INCLUDEPATH          += .
win32-g++:INCLUDEPATH      = ../qtools /usr/include/libpng12 ../libmd5
DESTDIR                    =  ../lib
TARGET                     =  doxygen
OBJECTS_DIR                =  ../objects

