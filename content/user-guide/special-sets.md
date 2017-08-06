---
title: "Special Sets"
date: 2017-08-06T23:05:26+02:00
weight: 8
draft: true
---

The following table shows the characters that are matched by the special sets that can be used in regular expressions and Microsoft Word wildcard characters:

Special Set |  Characters matched by the special set
------------|----------------------------------------
[:alpha:] | Any of the characters considered as alphabetic by the operating system under the current ANSI code page.
[:alphanum:] | Any of the characters considered as alphanumeric by the operating system under the current ANSI code page.
[:control:] | Characters in the hexadecimal range 0x00-0x19.
[:digit:] | Any digit from '0' to '9'.
[:letter:] | Any of the characters considered alphabetic in any language. For example, it matches Thai letters, Greek letters, Hebrew letters, Latin letters, etc.
[:letterdigit:] | Any of the characters considered as alphanumeric in any language.
[:num:], [:number:] | Any digit from '0' to '9' and the following superscript and fractional numbers: '1', '2', '3', '1⁄4', '1⁄2', '3⁄4'
[:punct:], [:punctuation:] | Any of the following characters: ! " # % & ' ( ) * , - . / : ; ? @ [ \] _ { } ¡ « - · » ¿
[:sep:], [:separator:] | Space (Hex 0x20) and non-breakable space (Hex 0xA0)
[:symbol:] | Any of the following characters: $ + <=> ^ ` | ~ ¢ £ ¤ ¥ ¦ §  ̈ © ¬ ®  ̄ ° ±  ́ ¶  ̧× ÷
[:space:] | Space (Hex 0x20), tabs and carriage returns in the range Hex 0x09-0x0C, plus Hex 0x85 and Hex 0xA0.
[:xdigit:] | Any hexadecimal digit from '0' to '9' and from 'a' to 'f' (or 'A' to 'F').
