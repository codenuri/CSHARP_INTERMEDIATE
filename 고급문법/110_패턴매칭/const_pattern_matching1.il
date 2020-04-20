
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation. All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly const_pattern_matching1
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 다음 사용자 지정 특성이 자동으로 추가됩니다. 주석 처리를 제거하지 마십시오. -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module const_pattern_matching1.exe
// MVID: {740DA42C-F7F6-4E21-B79C-03DFF7556E76}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00AA0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Circle
       extends [mscorlib]System.Object
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 코드 크기       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Circle::.ctor

} // end of class Circle

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 코드 크기       126 (0x7e)
    .maxstack  2
    .locals init (object V_0,
             class Circle V_1,
             object V_2,
             int32 V_3,
             object V_4,
             bool V_5,
             bool V_6,
             bool V_7,
             bool V_8,
             bool V_9,
             bool V_10)
    IL_0000:  nop
    IL_0001:  newobj     instance void Circle::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  isinst     Circle
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  ldnull
    IL_0010:  cgt.un
    IL_0012:  stloc.s    V_5
    IL_0014:  ldloc.s    V_5
    IL_0016:  brfalse.s  IL_001a

    IL_0018:  nop
    IL_0019:  nop
    IL_001a:  ldloc.0
    IL_001b:  stloc.2
    IL_001c:  ldc.i4.1
    IL_001d:  stloc.s    V_6
    IL_001f:  ldloc.s    V_6
    IL_0021:  brfalse.s  IL_0025

    IL_0023:  nop
    IL_0024:  nop
    IL_0025:  ldc.i4.s   10
    IL_0027:  stloc.3
    IL_0028:  ldloc.3
    IL_0029:  ldc.i4.s   10
    IL_002b:  ceq
    IL_002d:  stloc.s    V_7
    IL_002f:  ldloc.s    V_7
    IL_0031:  brfalse.s  IL_0035

    IL_0033:  nop
    IL_0034:  nop
    IL_0035:  ldloc.3
    IL_0036:  ldc.i4.s   10
    IL_0038:  ceq
    IL_003a:  stloc.s    V_8
    IL_003c:  ldloc.s    V_8
    IL_003e:  brfalse.s  IL_0042

    IL_0040:  nop
    IL_0041:  nop
    IL_0042:  ldc.i4.s   10
    IL_0044:  box        [mscorlib]System.Int32
    IL_0049:  stloc.s    V_4
    IL_004b:  ldloc.s    V_4
    IL_004d:  unbox.any  [mscorlib]System.Int32
    IL_0052:  ldc.i4.s   10
    IL_0054:  ceq
    IL_0056:  stloc.s    V_9
    IL_0058:  ldloc.s    V_9
    IL_005a:  brfalse.s  IL_005e

    IL_005c:  nop
    IL_005d:  nop
    IL_005e:  ldloc.s    V_4
    IL_0060:  isinst     [mscorlib]System.Int32
    IL_0065:  brfalse.s  IL_0074

    IL_0067:  ldloc.s    V_4
    IL_0069:  unbox.any  [mscorlib]System.Int32
    IL_006e:  ldc.i4.s   10
    IL_0070:  ceq
    IL_0072:  br.s       IL_0075

    IL_0074:  ldc.i4.0
    IL_0075:  stloc.s    V_10
    IL_0077:  ldloc.s    V_10
    IL_0079:  brfalse.s  IL_007d

    IL_007b:  nop
    IL_007c:  nop
    IL_007d:  ret
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
// 경고: Win32 리소스 파일 const_pattern_matching1.res을(를) 만들었습니다.
