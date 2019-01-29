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
%{
#include<BRepBlend_AppFunc.hxx>
#include<BRepBlend_AppFuncRoot.hxx>
#include<BRepBlend_AppFuncRst.hxx>
#include<BRepBlend_AppFuncRstRst.hxx>
#include<BRepBlend_AppSurf.hxx>
#include<BRepBlend_AppSurface.hxx>
#include<BRepBlend_BlendTool.hxx>
#include<BRepBlend_CSCircular.hxx>
#include<BRepBlend_CSConstRad.hxx>
#include<BRepBlend_CSWalking.hxx>
#include<BRepBlend_ChAsym.hxx>
#include<BRepBlend_ChAsymInv.hxx>
#include<BRepBlend_ChamfInv.hxx>
#include<BRepBlend_Chamfer.hxx>
#include<BRepBlend_ConstRad.hxx>
#include<BRepBlend_ConstRadInv.hxx>
#include<BRepBlend_CurvPointRadInv.hxx>
#include<BRepBlend_EvolRad.hxx>
#include<BRepBlend_EvolRadInv.hxx>
#include<BRepBlend_Extremity.hxx>
#include<BRepBlend_Line.hxx>
#include<BRepBlend_PointOnRst.hxx>
#include<BRepBlend_RstRstConstRad.hxx>
#include<BRepBlend_RstRstEvolRad.hxx>
#include<BRepBlend_RstRstLineBuilder.hxx>
#include<BRepBlend_Ruled.hxx>
#include<BRepBlend_RuledInv.hxx>
#include<BRepBlend_SequenceOfLine.hxx>
#include<BRepBlend_SequenceOfPointOnRst.hxx>
#include<BRepBlend_SurfCurvConstRadInv.hxx>
#include<BRepBlend_SurfCurvEvolRadInv.hxx>
#include<BRepBlend_SurfPointConstRadInv.hxx>
#include<BRepBlend_SurfPointEvolRadInv.hxx>
#include<BRepBlend_SurfRstConstRad.hxx>
#include<BRepBlend_SurfRstEvolRad.hxx>
#include<BRepBlend_SurfRstLineBuilder.hxx>
#include<BRepBlend_Walking.hxx>
#include<Standard.hxx>
#include<Standard_Byte.hxx>
#include<Standard_GUID.hxx>
#include<Standard_MultiplyDefined.hxx>
#include<Standard_Persistent.hxx>
#include<Standard_PCharacter.hxx>
#include<Standard_ImmutableObject.hxx>
#include<Standard_PErrorHandler.hxx>
#include<Standard_ExtCharacter.hxx>
#include<Standard_CString.hxx>
#include<Standard_NumericError.hxx>
#include<Standard_UUID.hxx>
#include<Standard_Assert.hxx>
#include<Standard_IStream.hxx>
#include<Standard_Macro.hxx>
#include<Standard_SStream.hxx>
#include<Standard_Integer.hxx>
#include<Standard_AbortiveTransaction.hxx>
#include<Standard_DomainError.hxx>
#include<Standard_NullValue.hxx>
#include<Standard_Underflow.hxx>
#include<Standard_PrimitiveTypes.hxx>
#include<Standard_Address.hxx>
#include<Standard_DimensionError.hxx>
#include<Standard_Time.hxx>
#include<Standard_OutOfRange.hxx>
#include<Standard_Stream.hxx>
#include<Standard_HandlerStatus.hxx>
#include<Standard_PExtCharacter.hxx>
#include<Standard_Overflow.hxx>
#include<Standard_NotImplemented.hxx>
#include<Standard_OStream.hxx>
#include<Standard_MMgrOpt.hxx>
#include<Standard_Size.hxx>
#include<Standard_ShortReal.hxx>
#include<Standard_Transient.hxx>
#include<Standard_Mutex.hxx>
#include<Standard_Atomic.hxx>
#include<Standard_Boolean.hxx>
#include<Standard_DefineException.hxx>
#include<Standard_math.hxx>
#include<Standard_Failure.hxx>
#include<Standard_MMgrRaw.hxx>
#include<Standard_ArrayStreamBuffer.hxx>
#include<Standard_DefineHandle.hxx>
#include<Standard_PByte.hxx>
#include<Standard_TypeMismatch.hxx>
#include<Standard_Version.hxx>
#include<Standard_LicenseNotFound.hxx>
#include<Standard_NoMoreObject.hxx>
#include<Standard_ExtString.hxx>
#include<Standard_NegativeValue.hxx>
#include<Standard_Type.hxx>
#include<Standard_Handle.hxx>
#include<Standard_MMgrTBBalloc.hxx>
#include<Standard_JmpBuf.hxx>
#include<Standard_ProgramError.hxx>
#include<Standard_NullObject.hxx>
#include<Standard_DefineAlloc.hxx>
#include<Standard_DivideByZero.hxx>
#include<Standard_TypeDef.hxx>
#include<Standard_DimensionMismatch.hxx>
#include<Standard_RangeError.hxx>
#include<Standard_OutOfMemory.hxx>
#include<Standard_ThreadId.hxx>
#include<Standard_MMgrRoot.hxx>
#include<Standard_ErrorHandler.hxx>
#include<Standard_NoSuchObject.hxx>
#include<Standard_TooManyUsers.hxx>
#include<Standard_LicenseError.hxx>
#include<Standard_Character.hxx>
#include<Standard_Real.hxx>
#include<Standard_ConstructionError.hxx>
#include<Standard_values.h>
#include<NCollection_Array1.hxx>
#include<NCollection_AccAllocator.hxx>
#include<NCollection_UtfString.hxx>
#include<NCollection_DefineHArray1.hxx>
#include<NCollection_Lerp.hxx>
#include<NCollection_DefineArray2.hxx>
#include<NCollection_DefineList.hxx>
#include<NCollection_DefineIndexedMap.hxx>
#include<NCollection_WinHeapAllocator.hxx>
#include<NCollection_Mat4.hxx>
#include<NCollection_AlignedAllocator.hxx>
#include<NCollection_DefineVector.hxx>
#include<NCollection_TypeDef.hxx>
#include<NCollection_Map.hxx>
#include<NCollection_BaseSequence.hxx>
#include<NCollection_LocalArray.hxx>
#include<NCollection_Comparator.hxx>
#include<NCollection_DefineMap.hxx>
#include<NCollection_HArray2.hxx>
#include<NCollection_TListNode.hxx>
#include<NCollection_DataMap.hxx>
#include<NCollection_DefineAlloc.hxx>
#include<NCollection_ListNode.hxx>
#include<NCollection_DefineDoubleMap.hxx>
#include<NCollection_DefineDataMap.hxx>
#include<NCollection_Vector.hxx>
#include<NCollection_DoubleMap.hxx>
#include<NCollection_UtfIterator.hxx>
#include<NCollection_DefineSequence.hxx>
#include<NCollection_HSequence.hxx>
#include<NCollection_Vec3.hxx>
#include<NCollection_UBTree.hxx>
#include<NCollection_EBTree.hxx>
#include<NCollection_DefineHArray2.hxx>
#include<NCollection_Vec4.hxx>
#include<NCollection_Handle.hxx>
#include<NCollection_CellFilter.hxx>
#include<NCollection_HArray1.hxx>
#include<NCollection_BaseList.hxx>
#include<NCollection_SparseArray.hxx>
#include<NCollection_DefineArray1.hxx>
#include<NCollection_BaseVector.hxx>
#include<NCollection_IncAllocator.hxx>
#include<NCollection_BaseAllocator.hxx>
#include<NCollection_SparseArrayBase.hxx>
#include<NCollection_IndexedMap.hxx>
#include<NCollection_Vec2.hxx>
#include<NCollection_List.hxx>
#include<NCollection_TListIterator.hxx>
#include<NCollection_BaseMap.hxx>
#include<NCollection_Buffer.hxx>
#include<NCollection_IndexedDataMap.hxx>
#include<NCollection_StdAllocator.hxx>
#include<NCollection_DefineHSequence.hxx>
#include<NCollection_UBTreeFiller.hxx>
#include<NCollection_DefineIndexedDataMap.hxx>
#include<NCollection_DefaultHasher.hxx>
#include<NCollection_String.hxx>
#include<NCollection_Sequence.hxx>
#include<NCollection_Array2.hxx>
#include<NCollection_Shared.hxx>
#include<NCollection_HeapAllocator.hxx>
#include<BlendFunc.hxx>
#include<BlendFunc_Ruled.hxx>
#include<BlendFunc_CSConstRad.hxx>
#include<BlendFunc_SectionShape.hxx>
#include<BlendFunc_Chamfer.hxx>
#include<BlendFunc_ConstRad.hxx>
#include<BlendFunc_ConstRadInv.hxx>
#include<BlendFunc_Corde.hxx>
#include<BlendFunc_ChamfInv.hxx>
#include<BlendFunc_ChAsymInv.hxx>
#include<BlendFunc_Tensor.hxx>
#include<BlendFunc_EvolRadInv.hxx>
#include<BlendFunc_CSCircular.hxx>
#include<BlendFunc_ChAsym.hxx>
#include<BlendFunc_EvolRad.hxx>
#include<BlendFunc_RuledInv.hxx>
#include<Approx_SweepFunction.hxx>
#include<Approx_Curve3d.hxx>
#include<Approx_CurvilinearParameter.hxx>
#include<Approx_Status.hxx>
#include<Approx_SequenceOfHArray1OfReal.hxx>
#include<Approx_Curve2d.hxx>
#include<Approx_Array1OfGTrsf2d.hxx>
#include<Approx_Array1OfAdHSurface.hxx>
#include<Approx_CurvlinFunc.hxx>
#include<Approx_HArray1OfGTrsf2d.hxx>
#include<Approx_SameParameter.hxx>
#include<Approx_HArray1OfAdHSurface.hxx>
#include<Approx_CurveOnSurface.hxx>
#include<Approx_SweepApproximation.hxx>
#include<Approx_FitAndDivide.hxx>
#include<Approx_MCurvesToBSpCurve.hxx>
#include<Approx_FitAndDivide2d.hxx>
#include<Approx_ParametrizationType.hxx>
#include<gp.hxx>
#include<gp_Pnt.hxx>
#include<gp_Lin.hxx>
#include<gp_XYZ.hxx>
#include<gp_Dir.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Quaternion.hxx>
#include<gp_QuaternionSLerp.hxx>
#include<gp_Mat.hxx>
#include<gp_Parab2d.hxx>
#include<gp_QuaternionNLerp.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Circ.hxx>
#include<gp_Ax2.hxx>
#include<gp_Torus.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Ax3.hxx>
#include<gp_TrsfNLerp.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Ax22d.hxx>
#include<gp_EulerSequence.hxx>
#include<gp_Lin2d.hxx>
#include<gp_XY.hxx>
#include<gp_Cone.hxx>
#include<gp_Trsf.hxx>
#include<gp_Sphere.hxx>
#include<gp_GTrsf.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Vec.hxx>
#include<gp_Parab.hxx>
#include<gp_Ax1.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Cylinder.hxx>
#include<gp_GTrsf2d.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_HArray2OfVec.hxx>
#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_SequenceOfAx1.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_SequenceOfArray1OfPnt2d.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColStd_Array2OfBoolean.hxx>
#include<TColStd_HArray1OfExtendedString.hxx>
#include<TColStd_HArray2OfBoolean.hxx>
#include<TColStd_HArray1OfCharacter.hxx>
#include<TColStd_HSequenceOfHAsciiString.hxx>
#include<TColStd_HArray1OfBoolean.hxx>
#include<TColStd_DataMapOfIntegerTransient.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_SequenceOfAddress.hxx>
#include<TColStd_DataMapOfIntegerInteger.hxx>
#include<TColStd_HArray2OfTransient.hxx>
#include<TColStd_Array2OfCharacter.hxx>
#include<TColStd_HArray1OfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfTransient.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_HSequenceOfTransient.hxx>
#include<TColStd_HSequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include<TColStd_MapOfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfTransient.hxx>
#include<TColStd_Array1OfByte.hxx>
#include<TColStd_ListOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_MapOfTransient.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include<TColStd_HArray1OfReal.hxx>
#include<TColStd_SequenceOfTransient.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_SequenceOfBoolean.hxx>
#include<TColStd_HArray1OfInteger.hxx>
#include<TColStd_DataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfListOfInteger.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_PackedMapOfInteger.hxx>
#include<TColStd_SequenceOfHExtendedString.hxx>
#include<TColStd_IndexedDataMapOfStringString.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TColStd_MapOfReal.hxx>
#include<TColStd_HSequenceOfHExtendedString.hxx>
#include<TColStd_MapIteratorOfMapOfAsciiString.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TColStd_MapIntegerHasher.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array2OfTransient.hxx>
#include<TColStd_DataMapOfIntegerReal.hxx>
#include<TColStd_DataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray2OfReal.hxx>
#include<TColStd_HArray1OfListOfInteger.hxx>
#include<TColStd_HPackedMapOfInteger.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfAsciiString.hxx>
#include<TColStd_MapTransientHasher.hxx>
#include<TColStd_HSequenceOfInteger.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray1OfTransient.hxx>
#include<TColStd_HArray2OfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfTransient.hxx>
#include<TColStd_HSequenceOfExtendedString.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include<TColStd_Array1OfCharacter.hxx>
#include<TColStd_HArray2OfCharacter.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TColStd_MapOfAsciiString.hxx>
#include<TColStd_MapRealHasher.hxx>
#include<TColStd_DataMapOfStringInteger.hxx>
#include<TColStd_IndexedMapOfReal.hxx>
#include<TColStd_HArray1OfByte.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include<TColStd_HSequenceOfReal.hxx>
#include<TColStd_Array1OfExtendedString.hxx>
#include<TColStd_DataMapOfAsciiStringInteger.hxx>
#include<TColStd_ListIteratorOfListOfReal.hxx>
#include<GeomAbs_IsoType.hxx>
#include<GeomAbs_JoinType.hxx>
#include<GeomAbs_SurfaceType.hxx>
#include<GeomAbs_CurveType.hxx>
#include<GeomAbs_SurfaceForm.hxx>
#include<GeomAbs_Shape.hxx>
#include<GeomAbs_BSplKnotDistribution.hxx>
#include<GeomAbs_CurveForm.hxx>
#include<GeomAbs_UVSense.hxx>
#include<Blend_Status.hxx>
#include<Blend_RstRstFunction.hxx>
#include<Blend_SurfPointFuncInv.hxx>
#include<Blend_CurvPointFuncInv.hxx>
#include<Blend_DecrochStatus.hxx>
#include<Blend_SurfRstFunction.hxx>
#include<Blend_FuncInv.hxx>
#include<Blend_SequenceOfPoint.hxx>
#include<Blend_Function.hxx>
#include<Blend_SurfCurvFuncInv.hxx>
#include<Blend_AppFunction.hxx>
#include<Blend_Point.hxx>
#include<Blend_CSFunction.hxx>
#include<math.hxx>
#include<math_ComputeKronrodPointsAndWeights.hxx>
#include<math_FunctionSet.hxx>
#include<math_FunctionRoot.hxx>
#include<math_Powell.hxx>
#include<math_PSOParticlesPool.hxx>
#include<math_BracketedRoot.hxx>
#include<math_FunctionSetWithDerivatives.hxx>
#include<math_FunctionRoots.hxx>
#include<math_Recipes.hxx>
#include<math_SVD.hxx>
#include<math_NewtonFunctionSetRoot.hxx>
#include<math_Array1OfValueAndWeight.hxx>
#include<math_FunctionWithDerivative.hxx>
#include<math_Crout.hxx>
#include<math_EigenValuesSearcher.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<math_MultipleVarFunction.hxx>
#include<math_ValueAndWeight.hxx>
#include<math_Uzawa.hxx>
#include<math_GaussLeastSquare.hxx>
#include<math_Vector.hxx>
#include<math_GaussSetIntegration.hxx>
#include<math_IntegerVector.hxx>
#include<math_Status.hxx>
#include<math_BullardGenerator.hxx>
#include<math_Householder.hxx>
#include<math_Jacobi.hxx>
#include<math_Matrix.hxx>
#include<math_Gauss.hxx>
#include<math_SingleTab.hxx>
#include<math_FunctionAllRoots.hxx>
#include<math_BFGS.hxx>
#include<math_Function.hxx>
#include<math_BissecNewton.hxx>
#include<math_BracketMinimum.hxx>
#include<math_TrigonometricFunctionRoots.hxx>
#include<math_NotSquare.hxx>
#include<math_NewtonMinimum.hxx>
#include<math_ComputeGaussPointsAndWeights.hxx>
#include<math_KronrodSingleIntegration.hxx>
#include<math_GaussPoints.hxx>
#include<math_DoubleTab.hxx>
#include<math_FRPR.hxx>
#include<math_GaussSingleIntegration.hxx>
#include<math_MultipleVarFunctionWithHessian.hxx>
#include<math_FunctionSample.hxx>
#include<math_DirectPolynomialRoots.hxx>
#include<math_NewtonFunctionRoot.hxx>
#include<math_GlobOptMin.hxx>
#include<math_PSO.hxx>
#include<math_GaussMultipleIntegration.hxx>
#include<math_FunctionSetRoot.hxx>
#include<math_BrentMinimum.hxx>
#include<math_SingularMatrix.hxx>
#include<AppBlend_Approx.hxx>
#include<Adaptor2d_Curve2dPtr.hxx>
#include<Adaptor2d_HCurve2d.hxx>
#include<Adaptor2d_HOffsetCurve.hxx>
#include<Adaptor2d_Line2d.hxx>
#include<Adaptor2d_OffsetCurve.hxx>
#include<Adaptor2d_Curve2d.hxx>
#include<Adaptor2d_HLine2d.hxx>
#include<Adaptor3d_HVertex.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_HSurface.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_HSurfaceTool.hxx>
#include<Adaptor3d_TopolTool.hxx>
#include<Adaptor3d_HCurve.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Adaptor3d_IsoCurve.hxx>
#include<Adaptor3d_HCurveOnSurface.hxx>
#include<Adaptor3d_HIsoCurve.hxx>
#include<Adaptor3d_InterFunc.hxx>
#include<Adaptor3d_CurvePtr.hxx>
#include<Adaptor3d_SurfacePtr.hxx>
#include<Adaptor3d_CurveOnSurfacePtr.hxx>
#include<IntSurf.hxx>
#include<IntSurf_SequenceOfPathPoint.hxx>
#include<IntSurf_PathPoint.hxx>
#include<IntSurf_LineOn2S.hxx>
#include<IntSurf_SequenceOfInteriorPoint.hxx>
#include<IntSurf_InteriorPoint.hxx>
#include<IntSurf_ListIteratorOfListOfPntOn2S.hxx>
#include<IntSurf_Allocator.hxx>
#include<IntSurf_SequenceOfCouple.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<IntSurf_SequenceOfPntOn2S.hxx>
#include<IntSurf_QuadricTool.hxx>
#include<IntSurf_Couple.hxx>
#include<IntSurf_Transition.hxx>
#include<IntSurf_Situation.hxx>
#include<IntSurf_InteriorPointTool.hxx>
#include<IntSurf_PathPointTool.hxx>
#include<IntSurf_TypeTrans.hxx>
#include<IntSurf_Quadric.hxx>
#include<IntSurf_ListOfPntOn2S.hxx>
#include<Law.hxx>
#include<Law_Interpolate.hxx>
#include<Law_Constant.hxx>
#include<Law_Linear.hxx>
#include<Law_BSpline.hxx>
#include<Law_BSpFunc.hxx>
#include<Law_Function.hxx>
#include<Law_BSplineKnotSplitting.hxx>
#include<Law_Composite.hxx>
#include<Law_Laws.hxx>
#include<Law_S.hxx>
#include<Law_Interpol.hxx>
#include<Law_ListIteratorOfLaws.hxx>
#include<ChFiDS_ChamfSpine.hxx>
#include<ChFiDS_SurfData.hxx>
#include<ChFiDS_State.hxx>
#include<ChFiDS_ChamfMethod.hxx>
#include<ChFiDS_CommonPoint.hxx>
#include<ChFiDS_Regul.hxx>
#include<ChFiDS_ListIteratorOfRegularities.hxx>
#include<ChFiDS_ListIteratorOfListOfStripe.hxx>
#include<ChFiDS_SequenceOfSpine.hxx>
#include<ChFiDS_ErrorStatus.hxx>
#include<ChFiDS_HData.hxx>
#include<ChFiDS_ElSpine.hxx>
#include<ChFiDS_SecHArray1.hxx>
#include<ChFiDS_CircSection.hxx>
#include<ChFiDS_SecArray1.hxx>
#include<ChFiDS_SequenceOfSurfData.hxx>
#include<ChFiDS_FilSpine.hxx>
#include<ChFiDS_StripeArray1.hxx>
#include<ChFiDS_ListOfHElSpine.hxx>
#include<ChFiDS_ListIteratorOfListOfHElSpine.hxx>
#include<ChFiDS_Stripe.hxx>
#include<ChFiDS_FaceInterference.hxx>
#include<ChFiDS_Spine.hxx>
#include<ChFiDS_StripeMap.hxx>
#include<ChFiDS_IndexedDataMapOfVertexListOfStripe.hxx>
#include<ChFiDS_ListOfStripe.hxx>
#include<ChFiDS_HElSpine.hxx>
#include<ChFiDS_Regularities.hxx>
#include<ChFiDS_Map.hxx>
#include<TopAbs.hxx>
#include<TopAbs_Orientation.hxx>
#include<TopAbs_ShapeEnum.hxx>
#include<TopAbs_State.hxx>
#include<AppParCurves.hxx>
#include<AppParCurves_HArray1OfMultiCurve.hxx>
#include<AppParCurves_Array1OfMultiCurve.hxx>
#include<AppParCurves_HArray1OfConstraintCouple.hxx>
#include<AppParCurves_HArray1OfMultiPoint.hxx>
#include<AppParCurves_Array1OfConstraintCouple.hxx>
#include<AppParCurves_SequenceOfMultiCurve.hxx>
#include<AppParCurves_Constraint.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<AppParCurves_SequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_MultiPoint.hxx>
#include<AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include<AppParCurves_Array1OfMultiBSpCurve.hxx>
#include<AppParCurves_Array1OfMultiPoint.hxx>
#include<AppParCurves_ConstraintCouple.hxx>
#include<TCollection.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_Side.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_AsciiString.hxx>
#include<PLib.hxx>
#include<PLib_DoubleJacobiPolynomial.hxx>
#include<PLib_HermitJacobi.hxx>
#include<PLib_JacobiPolynomial.hxx>
#include<PLib_Base.hxx>
#include<FEmTool_HAssemblyTable.hxx>
#include<FEmTool_LinearFlexion.hxx>
#include<FEmTool_AssemblyTable.hxx>
#include<FEmTool_Curve.hxx>
#include<FEmTool_ListIteratorOfListOfVectors.hxx>
#include<FEmTool_LinearJerk.hxx>
#include<FEmTool_SeqOfLinConstr.hxx>
#include<FEmTool_ElementsOfRefMatrix.hxx>
#include<FEmTool_Assembly.hxx>
#include<FEmTool_LinearTension.hxx>
#include<FEmTool_ProfileMatrix.hxx>
#include<FEmTool_ElementaryCriterion.hxx>
#include<FEmTool_ListOfVectors.hxx>
#include<FEmTool_SparseMatrix.hxx>
#include<Convert_SphereToBSplineSurface.hxx>
#include<Convert_CompPolynomialToPoles.hxx>
#include<Convert_ConeToBSplineSurface.hxx>
#include<Convert_EllipseToBSplineCurve.hxx>
#include<Convert_CompBezierCurvesToBSplineCurve.hxx>
#include<Convert_CylinderToBSplineSurface.hxx>
#include<Convert_SequenceOfArray1OfPoles.hxx>
#include<Convert_CircleToBSplineCurve.hxx>
#include<Convert_SequenceOfArray1OfPoles2d.hxx>
#include<Convert_ParabolaToBSplineCurve.hxx>
#include<Convert_ParameterisationType.hxx>
#include<Convert_PolynomialCosAndSin.hxx>
#include<Convert_TorusToBSplineSurface.hxx>
#include<Convert_GridPolynomialToPoles.hxx>
#include<Convert_HyperbolaToBSplineCurve.hxx>
#include<Convert_CosAndSinEvalFunction.hxx>
#include<Convert_CompBezierCurves2dToBSplineCurve2d.hxx>
#include<Convert_ElementarySurfaceToBSplineSurface.hxx>
#include<Convert_ConicToBSplineCurve.hxx>
#include<Geom_Line.hxx>
#include<Geom_BSplineSurface.hxx>
#include<Geom_OffsetCurve.hxx>
#include<Geom_SweptSurface.hxx>
#include<Geom_Axis1Placement.hxx>
#include<Geom_ElementarySurface.hxx>
#include<Geom_UndefinedValue.hxx>
#include<Geom_OsculatingSurface.hxx>
#include<Geom_Surface.hxx>
#include<Geom_BoundedSurface.hxx>
#include<Geom_Transformation.hxx>
#include<Geom_SequenceOfBSplineSurface.hxx>
#include<Geom_AxisPlacement.hxx>
#include<Geom_Conic.hxx>
#include<Geom_SurfaceOfLinearExtrusion.hxx>
#include<Geom_OffsetSurface.hxx>
#include<Geom_BezierSurface.hxx>
#include<Geom_Vector.hxx>
#include<Geom_VectorWithMagnitude.hxx>
#include<Geom_SphericalSurface.hxx>
#include<Geom_TrimmedCurve.hxx>
#include<Geom_BSplineCurve.hxx>
#include<Geom_BoundedCurve.hxx>
#include<Geom_Point.hxx>
#include<Geom_Geometry.hxx>
#include<Geom_ConicalSurface.hxx>
#include<Geom_RectangularTrimmedSurface.hxx>
#include<Geom_Ellipse.hxx>
#include<Geom_HSequenceOfBSplineSurface.hxx>
#include<Geom_CylindricalSurface.hxx>
#include<Geom_Curve.hxx>
#include<Geom_Parabola.hxx>
#include<Geom_UndefinedDerivative.hxx>
#include<Geom_CartesianPoint.hxx>
#include<Geom_SurfaceOfRevolution.hxx>
#include<Geom_Plane.hxx>
#include<Geom_Axis2Placement.hxx>
#include<Geom_Direction.hxx>
#include<Geom_BezierCurve.hxx>
#include<Geom_ToroidalSurface.hxx>
#include<Geom_Circle.hxx>
#include<Geom_Hyperbola.hxx>
#include<Geom2d_AxisPlacement.hxx>
#include<Geom2d_Direction.hxx>
#include<Geom2d_Ellipse.hxx>
#include<Geom2d_Circle.hxx>
#include<Geom2d_BSplineCurve.hxx>
#include<Geom2d_BoundedCurve.hxx>
#include<Geom2d_BezierCurve.hxx>
#include<Geom2d_UndefinedValue.hxx>
#include<Geom2d_Parabola.hxx>
#include<Geom2d_Line.hxx>
#include<Geom2d_Hyperbola.hxx>
#include<Geom2d_OffsetCurve.hxx>
#include<Geom2d_Point.hxx>
#include<Geom2d_Curve.hxx>
#include<Geom2d_CartesianPoint.hxx>
#include<Geom2d_Conic.hxx>
#include<Geom2d_VectorWithMagnitude.hxx>
#include<Geom2d_Transformation.hxx>
#include<Geom2d_Vector.hxx>
#include<Geom2d_UndefinedDerivative.hxx>
#include<Geom2d_TrimmedCurve.hxx>
#include<Geom2d_Geometry.hxx>
#include<Message.hxx>
#include<Message_Msg.hxx>
#include<Message_Status.hxx>
#include<Message_Gravity.hxx>
#include<Message_PrinterOStream.hxx>
#include<Message_Report.hxx>
#include<Message_Alert.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_ExecStatus.hxx>
#include<Message_ProgressIndicator.hxx>
#include<Message_Algorithm.hxx>
#include<Message_SequenceOfPrinters.hxx>
#include<Message_ProgressSentry.hxx>
#include<Message_MsgFile.hxx>
#include<Message_Printer.hxx>
#include<Message_SequenceOfProgressScale.hxx>
#include<Message_Messenger.hxx>
#include<Message_StatusType.hxx>
#include<Message_ProgressScale.hxx>
#include<Message_HArrayOfMsg.hxx>
#include<Message_ListOfAlert.hxx>
#include<Message_ListIteratorOfListOfMsg.hxx>
#include<BRepAdaptor_HCurve.hxx>
#include<BRepAdaptor_HArray1OfCurve.hxx>
#include<BRepAdaptor_Curve2d.hxx>
#include<BRepAdaptor_HCompCurve.hxx>
#include<BRepAdaptor_CompCurve.hxx>
#include<BRepAdaptor_HSurface.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<BRepAdaptor_Array1OfCurve.hxx>
#include<BRepAdaptor_HCurve2d.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<GeomAdaptor.hxx>
#include<GeomAdaptor_GHCurve.hxx>
#include<GeomAdaptor_HSurfaceOfLinearExtrusion.hxx>
#include<GeomAdaptor_SurfaceOfLinearExtrusion.hxx>
#include<GeomAdaptor_Curve.hxx>
#include<GeomAdaptor_Surface.hxx>
#include<GeomAdaptor_HSurfaceOfRevolution.hxx>
#include<GeomAdaptor_SurfaceOfRevolution.hxx>
#include<GeomAdaptor_HCurve.hxx>
#include<GeomAdaptor_HSurface.hxx>
#include<GeomAdaptor_GHSurface.hxx>
#include<Geom2dAdaptor.hxx>
#include<Geom2dAdaptor_HCurve.hxx>
#include<Geom2dAdaptor_Curve.hxx>
#include<Geom2dAdaptor_GHCurve.hxx>
#include<TopLoc_MapOfLocation.hxx>
#include<TopLoc_MapIteratorOfMapOfLocation.hxx>
#include<TopLoc_Datum3D.hxx>
#include<TopLoc_ItemLocation.hxx>
#include<TopLoc_IndexedMapOfLocation.hxx>
#include<TopLoc_MapLocationHasher.hxx>
#include<TopLoc_Location.hxx>
#include<TopLoc_SListNodeOfItemLocation.hxx>
#include<TopLoc_SListOfItemLocation.hxx>
#include<TopoDS.hxx>
#include<TopoDS_TWire.hxx>
#include<TopoDS_ListIteratorOfListOfShape.hxx>
#include<TopoDS_TVertex.hxx>
#include<TopoDS_HShape.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_UnCompatibleShapes.hxx>
#include<TopoDS_LockedShape.hxx>
#include<TopoDS_TEdge.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Builder.hxx>
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_TSolid.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_TShape.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_AlertWithShape.hxx>
#include<TopoDS_Compound.hxx>
#include<TopoDS_ListOfShape.hxx>
#include<TopoDS_TCompound.hxx>
#include<TopoDS_FrozenShape.hxx>
#include<TopoDS_TShell.hxx>
#include<TopoDS_TFace.hxx>
#include<TopoDS_Wire.hxx>
#include<TopTools.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_LocationSetPtr.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_MutexForShapeProvider.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_ListIteratorOfListOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfShapeReal.hxx>
#include<TopTools_LocationSet.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeAddress.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_DataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_HArray2OfVec.hxx>
#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_SequenceOfAx1.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_SequenceOfArray1OfPnt2d.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColStd_Array2OfBoolean.hxx>
#include<TColStd_HArray1OfExtendedString.hxx>
#include<TColStd_HArray2OfBoolean.hxx>
#include<TColStd_HArray1OfCharacter.hxx>
#include<TColStd_HSequenceOfHAsciiString.hxx>
#include<TColStd_HArray1OfBoolean.hxx>
#include<TColStd_DataMapOfIntegerTransient.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_SequenceOfAddress.hxx>
#include<TColStd_DataMapOfIntegerInteger.hxx>
#include<TColStd_HArray2OfTransient.hxx>
#include<TColStd_Array2OfCharacter.hxx>
#include<TColStd_HArray1OfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfTransient.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_HSequenceOfTransient.hxx>
#include<TColStd_HSequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include<TColStd_MapOfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfTransient.hxx>
#include<TColStd_Array1OfByte.hxx>
#include<TColStd_ListOfAsciiString.hxx>
#include<TColStd_MapIteratorOfMapOfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_MapOfTransient.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include<TColStd_HArray1OfReal.hxx>
#include<TColStd_SequenceOfTransient.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_SequenceOfBoolean.hxx>
#include<TColStd_HArray1OfInteger.hxx>
#include<TColStd_DataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfListOfInteger.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_PackedMapOfInteger.hxx>
#include<TColStd_SequenceOfHExtendedString.hxx>
#include<TColStd_IndexedDataMapOfStringString.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TColStd_MapOfReal.hxx>
#include<TColStd_HSequenceOfHExtendedString.hxx>
#include<TColStd_MapIteratorOfMapOfAsciiString.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TColStd_MapIntegerHasher.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array2OfTransient.hxx>
#include<TColStd_DataMapOfIntegerReal.hxx>
#include<TColStd_DataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray2OfReal.hxx>
#include<TColStd_HArray1OfListOfInteger.hxx>
#include<TColStd_HPackedMapOfInteger.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfAsciiString.hxx>
#include<TColStd_MapTransientHasher.hxx>
#include<TColStd_HSequenceOfInteger.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_HArray1OfTransient.hxx>
#include<TColStd_HArray2OfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TColStd_Array1OfTransient.hxx>
#include<TColStd_HSequenceOfExtendedString.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include<TColStd_Array1OfCharacter.hxx>
#include<TColStd_HArray2OfCharacter.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TColStd_MapOfAsciiString.hxx>
#include<TColStd_MapRealHasher.hxx>
#include<TColStd_DataMapOfStringInteger.hxx>
#include<TColStd_IndexedMapOfReal.hxx>
#include<TColStd_HArray1OfByte.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include<TColStd_HSequenceOfReal.hxx>
#include<TColStd_Array1OfExtendedString.hxx>
#include<TColStd_DataMapOfAsciiStringInteger.hxx>
#include<TColStd_ListIteratorOfListOfReal.hxx>
#include<TCollection.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_Side.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_AsciiString.hxx>
#include<Storage.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_RootData.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_Root.hxx>
#include<Storage_PType.hxx>
#include<Storage_Error.hxx>
#include<Storage_Schema.hxx>
#include<Storage_PArray.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_Macros.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_TypedCallBack.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_Position.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_Data.hxx>
%};
%import Standard.i
%import NCollection.i
%import BlendFunc.i
%import Approx.i
%import gp.i
%import TColgp.i
%import TColStd.i
%import GeomAbs.i
%import Blend.i
%import math.i
%import AppBlend.i
%import Adaptor2d.i
%import Adaptor3d.i
%import IntSurf.i
%import Law.i
%import ChFiDS.i
%import TopAbs.i
