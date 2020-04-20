
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation. All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly operator
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 다음 사용자 지정 특성이 자동으로 추가됩니다. 주석 처리를 제거하지 마십시오. -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module operator.exe
// MVID: {282B947A-9C2B-4F10-82A5-FF8E30CB878D}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x06F00000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Point
       extends [mscorlib]System.Object
{
  .field public int32 x
  .field public int32 y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 a,
                               int32 b) cil managed
  {
    // 코드 크기       37 (0x25)
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
    IL_0017:  ldarg.1
    IL_0018:  stfld      int32 Point::x
    IL_001d:  ldarg.0
    IL_001e:  ldarg.2
    IL_001f:  stfld      int32 Point::y
    IL_0024:  ret
  } // end of method Point::.ctor

  .method public hidebysig specialname static 
          class Point  op_Addition(class Point p1,
                                   class Point p2) cil managed
  {
    // 코드 크기       39 (0x27)
    .maxstack  3
    .locals init (class Point V_0,
             class Point V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Point::x
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 Point::x
    IL_000d:  add
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 Point::y
    IL_0014:  ldarg.1
    IL_0015:  ldfld      int32 Point::y
    IL_001a:  add
    IL_001b:  newobj     instance void Point::.ctor(int32,
                                                    int32)
    IL_0020:  stloc.0
    IL_0021:  ldloc.0
    IL_0022:  stloc.1
    IL_0023:  br.s       IL_0025

    IL_0025:  ldloc.1
    IL_0026:  ret
  } // end of method Point::op_Addition

} // end of class Point

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // 코드 크기       64 (0x40)
    .maxstack  3
    .locals init (class Point V_0,
             class Point V_1,
             class Point V_2)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  ldc.i4.1
    IL_0003:  newobj     instance void Point::.ctor(int32,
                                                    int32)
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.2
    IL_000a:  ldc.i4.2
    IL_000b:  newobj     instance void Point::.ctor(int32,
                                                    int32)
    IL_0010:  stloc.1
    IL_0011:  ldloc.0
    IL_0012:  ldloc.1
    IL_0013:  call       class Point Point::op_Addition(class Point,
                                                        class Point)
    IL_0018:  stloc.2
    IL_0019:  ldstr      "{0}, {1}"
    IL_001e:  ldloc.2
    IL_001f:  ldfld      int32 Point::x
    IL_0024:  box        [mscorlib]System.Int32
    IL_0029:  ldloc.2
    IL_002a:  ldfld      int32 Point::y
    IL_002f:  box        [mscorlib]System.Int32
    IL_0034:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0039:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_003e:  nop
    IL_003f:  ret
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
// 경고: Win32 리소스 파일 operator.res을(를) 만들었습니다.
