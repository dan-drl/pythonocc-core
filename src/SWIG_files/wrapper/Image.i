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
%define IMAGEDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=IMAGEDOCSTRING) Image

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


%include Image_headers.i

/* rttiext only ojects wrapped as handles */
/* end rttiext only declaration */

/* templates */
/* end templates declaration */


/* typedefs */
/* end typedefs declaration */

/* public enums */
enum Image_Format {
	Image_Format_UNKNOWN = 0,
	Image_Format_Gray = 1,
	Image_Format_Alpha = 2,
	Image_Format_RGB = 3,
	Image_Format_BGR = 4,
	Image_Format_RGB32 = 5,
	Image_Format_BGR32 = 6,
	Image_Format_RGBA = 7,
	Image_Format_BGRA = 8,
	Image_Format_GrayF = 9,
	Image_Format_AlphaF = 10,
	Image_Format_RGBF = 11,
	Image_Format_BGRF = 12,
	Image_Format_RGBAF = 13,
	Image_Format_BGRAF = 14,
};

/* end public enums declaration */

/* harray1 class */
/* harray2 class */
/* harray2 class */
