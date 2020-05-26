
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation. All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Core
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern Microsoft.CSharp
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly call2
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 다음 사용자 지정 특성이 자동으로 추가됩니다. 주석 처리를 제거하지 마십시오. -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module call2.exe
// MVID: {FD4623A2-CCF3-4EB4-B50C-BD4DDF888272}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x05380000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Base
       extends [mscorlib]System.Object
{
  .method public hidebysig instance void 
          Foo() cil managed
  {
    // 코드 크기       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Base::Foo

  .method public hidebysig newslot virtual 
          instance void  Goo() cil managed
  {
    // 코드 크기       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Base::Goo

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 코드 크기       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Base::.ctor

} // end of class Base

.class private auto ansi beforefieldinit Derived
       extends Base
{
  .method public hidebysig instance void 
          Foo() cil managed
  {
    // 코드 크기       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Derived::Foo

  .method public hidebysig virtual instance void 
          Goo() cil managed
  {
    // 코드 크기       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Derived::Goo

  .method public hidebysig static void  Hoo() cil managed
  {
    // 코드 크기       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Derived::Hoo

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 코드 크기       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Base::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Derived::.ctor

} // end of class Derived

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .class abstract auto ansi sealed nested private beforefieldinit '<>o__0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> '<>p__0'
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> '<>p__1'
  } // end of class '<>o__0'

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 코드 크기       234 (0xea)
    .maxstack  9
    .locals init (class Base V_0,
             object V_1)
    IL_0000:  nop
    IL_0001:  call       void Derived::Hoo()
    IL_0006:  nop
    IL_0007:  newobj     instance void Derived::.ctor()
    IL_000c:  call       instance void Derived::Foo()
    IL_0011:  nop
    IL_0012:  newobj     instance void Derived::.ctor()
    IL_0017:  callvirt   instance void Base::Goo()
    IL_001c:  nop
    IL_001d:  newobj     instance void Derived::.ctor()
    IL_0022:  stloc.0
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance void Base::Foo()
    IL_0029:  nop
    IL_002a:  ldloc.0
    IL_002b:  brtrue.s   IL_002f

    IL_002d:  br.s       IL_0036

    IL_002f:  ldloc.0
    IL_0030:  call       instance void Base::Foo()
    IL_0035:  nop
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance void Base::Goo()
    IL_003c:  nop
    IL_003d:  newobj     instance void Derived::.ctor()
    IL_0042:  stloc.1
    IL_0043:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_0048:  brfalse.s  IL_004c

    IL_004a:  br.s       IL_0080

    IL_004c:  ldc.i4     0x100
    IL_0051:  ldstr      "Foo"
    IL_0056:  ldnull
    IL_0057:  ldtoken    Program
    IL_005c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0061:  ldc.i4.1
    IL_0062:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_0067:  dup
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.0
    IL_006a:  ldnull
    IL_006b:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0070:  stelem.ref
    IL_0071:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_0076:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_007b:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_0080:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_0085:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Target
    IL_008a:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_008f:  ldloc.1
    IL_0090:  callvirt   instance void class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>::Invoke(!0,
                                                                                                                                                   !1)
    IL_0095:  nop
    IL_0096:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_009b:  brfalse.s  IL_009f

    IL_009d:  br.s       IL_00d3

    IL_009f:  ldc.i4     0x100
    IL_00a4:  ldstr      "Goo"
    IL_00a9:  ldnull
    IL_00aa:  ldtoken    Program
    IL_00af:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_00b4:  ldc.i4.1
    IL_00b5:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_00ba:  dup
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  ldnull
    IL_00be:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_00c3:  stelem.ref
    IL_00c4:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_00c9:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_00ce:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_00d3:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_00d8:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Target
    IL_00dd:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_00e2:  ldloc.1
    IL_00e3:  callvirt   instance void class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>::Invoke(!0,
                                                                                                                                                   !1)
    IL_00e8:  nop
    IL_00e9:  ret
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
// 경고: Win32 리소스 파일 call2.res을(를) 만들었습니다.
