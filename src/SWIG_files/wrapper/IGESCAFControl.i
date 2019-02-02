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
%define IGESCAFCONTROLDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=IGESCAFCONTROLDOCSTRING) IGESCAFControl

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


%include IGESCAFControl_headers.i

/* rttiext only ojects wrapped as handles */
/* end rttiext only declaration */

/* templates */
/* end templates declaration */


/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */


%rename(igescafcontrol) IGESCAFControl;
class IGESCAFControl {
	public:
		%feature("compactdefaultargs") DecodeColor;
		%feature("autodoc", "	* Provides a tool for writing IGES file Converts IGES color index to CASCADE color

	:param col:
	:type col: int
	:rtype: Quantity_Color
") DecodeColor;
		static Quantity_Color DecodeColor (const Standard_Integer col);
		%feature("compactdefaultargs") EncodeColor;
		%feature("autodoc", "	* Tries to Convert CASCADE color to IGES color index If no corresponding color defined in IGES, returns 0

	:param col:
	:type col: Quantity_Color &
	:rtype: int
") EncodeColor;
		static Standard_Integer EncodeColor (const Quantity_Color & col);
};


%extend IGESCAFControl {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor IGESCAFControl_Reader;
class IGESCAFControl_Reader : public IGESControl_Reader {
	public:
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "	:rtype: bool
") GetColorMode;
		Standard_Boolean GetColorMode ();
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "	:rtype: bool
") GetLayerMode;
		Standard_Boolean GetLayerMode ();
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "	:rtype: bool
") GetNameMode;
		Standard_Boolean GetNameMode ();
		%feature("compactdefaultargs") IGESCAFControl_Reader;
		%feature("autodoc", "	* Creates a reader with an empty IGES model and sets ColorMode, LayerMode and NameMode to Standard_True.

	:rtype: None
") IGESCAFControl_Reader;
		 IGESCAFControl_Reader ();
		%feature("compactdefaultargs") IGESCAFControl_Reader;
		%feature("autodoc", "	* Creates a reader tool and attaches it to an already existing Session Clears the session if it was not yet set for IGES

	:param theWS:
	:type theWS: Handle_XSControl_WorkSession &
	:param FromScratch: default value is Standard_True
	:type FromScratch: bool
	:rtype: None
") IGESCAFControl_Reader;
		 IGESCAFControl_Reader (const Handle_XSControl_WorkSession & theWS,const Standard_Boolean FromScratch = Standard_True);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param theFileName:
	:type theFileName: TCollection_AsciiString &
	:param theDoc:
	:type theDoc: Handle_TDocStd_Document &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const TCollection_AsciiString & theFileName,Handle_TDocStd_Document & theDoc);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Translate IGES file given by filename into the document Return True if succeeded, and False in case of fail

	:param theFileName:
	:type theFileName: char *
	:param theDoc:
	:type theDoc: Handle_TDocStd_Document &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const char * theFileName,Handle_TDocStd_Document & theDoc);
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "	* Set ColorMode for indicate read Colors or not.

	:param theMode:
	:type theMode: bool
	:rtype: None
") SetColorMode;
		void SetColorMode (const Standard_Boolean theMode);
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "	* Set LayerMode for indicate read Layers or not.

	:param theMode:
	:type theMode: bool
	:rtype: None
") SetLayerMode;
		void SetLayerMode (const Standard_Boolean theMode);
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "	* Set NameMode for indicate read Name or not.

	:param theMode:
	:type theMode: bool
	:rtype: None
") SetNameMode;
		void SetNameMode (const Standard_Boolean theMode);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Translates currently loaded IGES file into the document Returns True if succeeded, and False in case of fail

	:param theDoc:
	:type theDoc: Handle_TDocStd_Document &
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (Handle_TDocStd_Document & theDoc);
};


%extend IGESCAFControl_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor IGESCAFControl_Writer;
class IGESCAFControl_Writer : public IGESControl_Writer {
	public:
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "	:rtype: bool
") GetColorMode;
		Standard_Boolean GetColorMode ();
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "	:rtype: bool
") GetLayerMode;
		Standard_Boolean GetLayerMode ();
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "	:rtype: bool
") GetNameMode;
		Standard_Boolean GetNameMode ();
		%feature("compactdefaultargs") IGESCAFControl_Writer;
		%feature("autodoc", "	* Creates a writer with an empty IGES model and sets ColorMode, LayerMode and NameMode to Standard_True.

	:rtype: None
") IGESCAFControl_Writer;
		 IGESCAFControl_Writer ();
		%feature("compactdefaultargs") IGESCAFControl_Writer;
		%feature("autodoc", "	* Creates a reader tool and attaches it to an already existing Session Clears the session if it was not yet set for IGES

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") IGESCAFControl_Writer;
		 IGESCAFControl_Writer (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param filename:
	:type filename: TCollection_AsciiString &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const Handle_TDocStd_Document & doc,const TCollection_AsciiString & filename);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Transfers a document and writes it to a IGES file Returns True if translation is OK

	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param filename:
	:type filename: char *
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const Handle_TDocStd_Document & doc,const char * filename);
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "	* Set ColorMode for indicate write Colors or not.

	:param colormode:
	:type colormode: bool
	:rtype: None
") SetColorMode;
		void SetColorMode (const Standard_Boolean colormode);
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "	* Set LayerMode for indicate write Layers or not.

	:param layermode:
	:type layermode: bool
	:rtype: None
") SetLayerMode;
		void SetLayerMode (const Standard_Boolean layermode);
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "	* Set NameMode for indicate write Name or not.

	:param namemode:
	:type namemode: bool
	:rtype: None
") SetNameMode;
		void SetNameMode (const Standard_Boolean namemode);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Transfers a document to a IGES model Returns True if translation is OK

	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (const Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Transfers labels to a IGES model Returns True if translation is OK

	:param labels:
	:type labels: TDF_LabelSequence &
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (const TDF_LabelSequence & labels);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Transfers label to a IGES model Returns True if translation is OK

	:param label:
	:type label: TDF_Label &
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (const TDF_Label & label);
};


%extend IGESCAFControl_Writer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
