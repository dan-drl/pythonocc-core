/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%define PLUGINDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=PLUGINDOCSTRING) Plugin

#pragma SWIG nowarn=504,325,503,520,350,351,383,389,394,395, 404

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include Plugin_headers.i

/* rttiext only ojects wrapped as handles */
/* end rttiext only declaration */

/* templates */
%template(Plugin_MapOfFunctions) NCollection_DataMap <TCollection_AsciiString , OSD_Function , TCollection_AsciiString>;
/* end templates declaration */


/* typedefs */
typedef NCollection_DataMap <TCollection_AsciiString , OSD_Function , TCollection_AsciiString> Plugin_MapOfFunctions;
typedef NCollection_DataMap <TCollection_AsciiString , OSD_Function , TCollection_AsciiString>::Iterator Plugin_DataMapIteratorOfMapOfFunctions;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

/* harray1 class */
/* harray2 class */
/* harray2 class */
