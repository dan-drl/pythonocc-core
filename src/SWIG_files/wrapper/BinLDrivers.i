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
%define BINLDRIVERSDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=BINLDRIVERSDOCSTRING) BinLDrivers

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


%include BinLDrivers_headers.i

/* rttiext only ojects wrapped as handles */
/* end rttiext only declaration */

/* templates */
%template(BinLDrivers_VectorOfDocumentSection) NCollection_Vector <BinLDrivers_DocumentSection>;
/* end templates declaration */


/* typedefs */
typedef NCollection_Vector <BinLDrivers_DocumentSection> BinLDrivers_VectorOfDocumentSection;
/* end typedefs declaration */

/* public enums */
enum BinLDrivers_Marker {
	BinLDrivers_ENDATTRLIST = - 1,
	BinLDrivers_ENDLABEL = - 2,
};

/* end public enums declaration */

%wrap_handle(BinLDrivers_DocumentRetrievalDriver)
%wrap_handle(BinLDrivers_DocumentStorageDriver)

%rename(binldrivers) BinLDrivers;
%nodefaultctor BinLDrivers;
class BinLDrivers {
	public:
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	* Creates a table of the supported drivers' types

	:param MsgDrv:
	:type MsgDrv: Handle_CDM_MessageDriver &
	:rtype: Handle_BinMDF_ADriverTable
") AttributeDrivers;
		static Handle_BinMDF_ADriverTable AttributeDrivers (const Handle_CDM_MessageDriver & MsgDrv);
		%feature("compactdefaultargs") DefineFormat;
		%feature("autodoc", "	* Defines format 'BinLOcaf' and registers its read and write drivers in the specified application

	:param theApp:
	:type theApp: Handle_TDocStd_Application &
	:rtype: void
") DefineFormat;
		static void DefineFormat (const Handle_TDocStd_Application & theApp);
		%feature("compactdefaultargs") Factory;
		%feature("autodoc", "	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: Handle_Standard_Transient
") Factory;
		Handle_Standard_Transient Factory (const Standard_GUID & theGUID);
		%feature("compactdefaultargs") StorageVersion;
		%feature("autodoc", "	* returns last storage version

	:rtype: TCollection_AsciiString
") StorageVersion;
		static TCollection_AsciiString StorageVersion ();
};


%extend BinLDrivers {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BinLDrivers_DocumentRetrievalDriver;
class BinLDrivers_DocumentRetrievalDriver : public PCDM_RetrievalDriver {
	public:
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: Handle_BinMDF_ADriverTable
") AttributeDrivers;
		virtual Handle_BinMDF_ADriverTable AttributeDrivers (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") BinLDrivers_DocumentRetrievalDriver;
		%feature("autodoc", "	* Constructor

	:rtype: None
") BinLDrivers_DocumentRetrievalDriver;
		 BinLDrivers_DocumentRetrievalDriver ();
		%feature("compactdefaultargs") CreateDocument;
		%feature("autodoc", "	* pure virtual method definition

	:rtype: Handle_CDM_Document
") CreateDocument;
		virtual Handle_CDM_Document CreateDocument ();
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	* retrieves the content of the file into a new Document.

	:param theFileName:
	:type theFileName: TCollection_ExtendedString &
	:param theNewDocument:
	:type theNewDocument: Handle_CDM_Document &
	:param theApplication:
	:type theApplication: Handle_CDM_Application &
	:rtype: void
") Read;
		virtual void Read (const TCollection_ExtendedString & theFileName,const Handle_CDM_Document & theNewDocument,const Handle_CDM_Application & theApplication);
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	:param theIStream:
	:type theIStream: Standard_IStream &
	:param theStorageData:
	:type theStorageData: Handle_Storage_Data &
	:param theDoc:
	:type theDoc: Handle_CDM_Document &
	:param theApplication:
	:type theApplication: Handle_CDM_Application &
	:rtype: void
") Read;
		virtual void Read (Standard_IStream & theIStream,const Handle_Storage_Data & theStorageData,const Handle_CDM_Document & theDoc,const Handle_CDM_Application & theApplication);
};


%make_alias(BinLDrivers_DocumentRetrievalDriver)

%extend BinLDrivers_DocumentRetrievalDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BinLDrivers_DocumentSection;
class BinLDrivers_DocumentSection {
	public:
		%feature("compactdefaultargs") BinLDrivers_DocumentSection;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") BinLDrivers_DocumentSection;
		 BinLDrivers_DocumentSection ();
		%feature("compactdefaultargs") BinLDrivers_DocumentSection;
		%feature("autodoc", "	* Constructor

	:param theName:
	:type theName: TCollection_AsciiString &
	:param isPostRead:
	:type isPostRead: bool
	:rtype: None
") BinLDrivers_DocumentSection;
		 BinLDrivers_DocumentSection (const TCollection_AsciiString & theName,const Standard_Boolean isPostRead);
		%feature("compactdefaultargs") IsPostRead;
		%feature("autodoc", "	* Query the status: if the Section should be read after OCAF; False means that the Section is read before starting to read OCAF data.

	:rtype: bool
") IsPostRead;
		Standard_Boolean IsPostRead ();
		%feature("compactdefaultargs") Length;
		%feature("autodoc", "	* Query the length of the section in the persistent file

	:rtype: uint64_t
") Length;
		uint64_t Length ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Query the name of the section.

	:rtype: TCollection_AsciiString
") Name;
		const TCollection_AsciiString & Name ();
		%feature("compactdefaultargs") Offset;
		%feature("autodoc", "	* Query the offset of the section in the persistent file

	:rtype: uint64_t
") Offset;
		uint64_t Offset ();
		%feature("compactdefaultargs") ReadTOC;
		%feature("autodoc", "	* Fill a DocumentSection instance from the data that are read from TOC.

	:param theSection:
	:type theSection: BinLDrivers_DocumentSection &
	:param theIS:
	:type theIS: Standard_IStream &
	:rtype: void
") ReadTOC;
		static void ReadTOC (BinLDrivers_DocumentSection & theSection,Standard_IStream & theIS);
		%feature("compactdefaultargs") SetLength;
		%feature("autodoc", "	* Set the length of the section in the persistent file

	:param theLength:
	:type theLength: uint64_t
	:rtype: None
") SetLength;
		void SetLength (const uint64_t theLength);
		%feature("compactdefaultargs") SetOffset;
		%feature("autodoc", "	* Set the offset of the section in the persistent file

	:param theOffset:
	:type theOffset: uint64_t
	:rtype: None
") SetOffset;
		void SetOffset (const uint64_t theOffset);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Save Offset and Length data into the Section entry in the Document TOC (list of sections)

	:param theOS:
	:type theOS: Standard_OStream &
	:param theOffset:
	:type theOffset: uint64_t
	:rtype: None
") Write;
		void Write (Standard_OStream & theOS,const uint64_t theOffset);

        %feature("autodoc", "1");
        %extend{
            std::string WriteTOCToString() {
            std::stringstream s;
            self->WriteTOC(s);
            return s.str();}
        };
        };


%extend BinLDrivers_DocumentSection {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BinLDrivers_DocumentStorageDriver;
class BinLDrivers_DocumentStorageDriver : public PCDM_StorageDriver {
	public:
		%feature("compactdefaultargs") AddSection;
		%feature("autodoc", "	* Create a section that should be written after the OCAF data

	:param theName:
	:type theName: TCollection_AsciiString &
	:param isPostRead: default value is Standard_True
	:type isPostRead: bool
	:rtype: None
") AddSection;
		void AddSection (const TCollection_AsciiString & theName,const Standard_Boolean isPostRead = Standard_True);
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: Handle_BinMDF_ADriverTable
") AttributeDrivers;
		virtual Handle_BinMDF_ADriverTable AttributeDrivers (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") BinLDrivers_DocumentStorageDriver;
		%feature("autodoc", "	* Constructor

	:rtype: None
") BinLDrivers_DocumentStorageDriver;
		 BinLDrivers_DocumentStorageDriver ();
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Write <theDocument> to the binary file <theFileName>

	:param theDocument:
	:type theDocument: Handle_CDM_Document &
	:param theFileName:
	:type theFileName: TCollection_ExtendedString &
	:rtype: void
") Write;
		virtual void Write (const Handle_CDM_Document & theDocument,const TCollection_ExtendedString & theFileName);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Write <theDocument> to theOStream

	:param theDocument:
	:type theDocument: Handle_CDM_Document &
	:param theOStream:
	:type theOStream: Standard_OStream &
	:rtype: void
") Write;
		virtual void Write (const Handle_CDM_Document & theDocument,Standard_OStream & theOStream);
};


%make_alias(BinLDrivers_DocumentStorageDriver)

%extend BinLDrivers_DocumentStorageDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
