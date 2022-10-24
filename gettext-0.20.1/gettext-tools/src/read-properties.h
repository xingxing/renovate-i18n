/* Reading Java .properties files.
   Copyright (C) 2003, 2006 Free Software Foundation, Inc.
   Written by Bruno Haible <bruno@clisp.org>, 2003.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

#ifndef _READ_PROPERTIES_H
#define _READ_PROPERTIES_H

#include "read-catalog-abstract.h"

/* Describes a .properties file parser.  */
extern DLL_VARIABLE const struct catalog_input_format input_format_properties;

#endif /* _READ_PROPERTIES_H */
