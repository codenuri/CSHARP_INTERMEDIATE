
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation. All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly static_ctor3
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 다음 사용자 지정 특성이 자동으로 추가됩니다. 주석 처리를 제거하지 마십시오. -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module static_ctor3.exe
// MVID: {3190EB9A-DBC4-49D3-BDC1-A00031F289E7}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x068A0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi Point
       extends [mscorlib]System.Object
{
  .field public int32 x
  .field public int32 y
  .field public static int32 cnt
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 코드 크기       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 Point::x
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.0
    IL_0009:  stfld      int32 Point::y
    IL_000e:  ldarg.0
    IL_000f:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0014:  nop
    IL_0015:  nop
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.s   100
    IL_0019:  stfld      int32 Point::x
    IL_001e:  ldarg.0
    IL_001f:  ldc.i4.s   100
    IL_0021:  stfld      int32 Point::y
    IL_0026:  ret
  } // end of method Point::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 코드 크기       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     int32 Point::cnt
    IL_0006:  nop
    IL_0007:  ldc.i4.s   100
    IL_0009:  stsfld     int32 Point::cnt
    IL_000e:  ret
  } // end of method Point::.cctor

} // end of class Point

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 코드 크기       8 (0x8)
    .maxstack  1
    .locals init (class Point V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void Point::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 코드 크기       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class Program


// =============================================================

// *********** 디스어셈블리 완료 ***********************
// 경고: Win32 리소스 파일 static_ctor3.res을(를) 만들었습니다.
