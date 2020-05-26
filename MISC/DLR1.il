
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
.assembly dlr1
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 다음 사용자 지정 특성이 자동으로 추가됩니다. 주석 처리를 제거하지 마십시오. -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module dlr1.exe
// MVID: {3D3F680E-8B97-40AE-81AC-44120A7CB987}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x04F10000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Base
       extends [mscorlib]System.Object
{
  .method public hidebysig instance void 
          Foo() cil managed
  {
    // 코드 크기       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Base Foo"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Base::Foo

  .method public hidebysig newslot virtual 
          instance void  Goo() cil managed
  {
    // 코드 크기       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Base Goo"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
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
    // 코드 크기       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Derived Foo"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Derived::Foo

  .method public hidebysig virtual instance void 
          Goo() cil managed
  {
    // 코드 크기       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Derived Goo"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Derived::Goo

  .method public hidebysig instance void 
          Hoo() cil managed
  {
    // 코드 크기       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Derived Hoo"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
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
    .field public static class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> '<>p__2'
  } // end of class '<>o__0'

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 코드 크기       343 (0x157)
    .maxstack  9
    .locals init (class Base V_0,
             int32 V_1,
             object V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  newobj     instance void Derived::.ctor()
    IL_0008:  call       instance void Derived::Foo()
    IL_000d:  nop
    IL_000e:  newobj     instance void Derived::.ctor()
    IL_0013:  callvirt   instance void Base::Goo()
    IL_0018:  nop
    IL_0019:  ldc.i4.1
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  ldc.i4.1
    IL_001d:  ceq
    IL_001f:  stloc.3
    IL_0020:  ldloc.3
    IL_0021:  brfalse.s  IL_002b

    IL_0023:  newobj     instance void Derived::.ctor()
    IL_0028:  stloc.0
    IL_0029:  br.s       IL_0031

    IL_002b:  newobj     instance void Base::.ctor()
    IL_0030:  stloc.0
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance void Base::Foo()
    IL_0037:  nop
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance void Base::Goo()
    IL_003e:  nop
    IL_003f:  ldloc.0
    IL_0040:  brtrue.s   IL_0044

    IL_0042:  br.s       IL_004b

    IL_0044:  ldloc.0
    IL_0045:  call       instance void Base::Foo()
    IL_004a:  nop
    IL_004b:  ldloc.0
    IL_004c:  brtrue.s   IL_0050

    IL_004e:  br.s       IL_0057

    IL_0050:  ldloc.0
    IL_0051:  callvirt   instance void Base::Goo()
    IL_0056:  nop
    IL_0057:  newobj     instance void Derived::.ctor()
    IL_005c:  stloc.2
    IL_005d:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_0062:  brfalse.s  IL_0066

    IL_0064:  br.s       IL_009a

    IL_0066:  ldc.i4     0x100
    IL_006b:  ldstr      "Foo"
    IL_0070:  ldnull
    IL_0071:  ldtoken    Program
    IL_0076:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_007b:  ldc.i4.1
    IL_007c:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_0081:  dup
    IL_0082:  ldc.i4.0
    IL_0083:  ldc.i4.0
    IL_0084:  ldnull
    IL_0085:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_008a:  stelem.ref
    IL_008b:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_0090:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_0095:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_009a:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_009f:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Target
    IL_00a4:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__0'
    IL_00a9:  ldloc.2
    IL_00aa:  callvirt   instance void class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>::Invoke(!0,
                                                                                                                                                   !1)
    IL_00af:  nop
    IL_00b0:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_00b5:  brfalse.s  IL_00b9

    IL_00b7:  br.s       IL_00ed

    IL_00b9:  ldc.i4     0x100
    IL_00be:  ldstr      "Goo"
    IL_00c3:  ldnull
    IL_00c4:  ldtoken    Program
    IL_00c9:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_00ce:  ldc.i4.1
    IL_00cf:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_00d4:  dup
    IL_00d5:  ldc.i4.0
    IL_00d6:  ldc.i4.0
    IL_00d7:  ldnull
    IL_00d8:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_00dd:  stelem.ref
    IL_00de:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_00e3:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_00e8:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_00ed:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_00f2:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Target
    IL_00f7:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__1'
    IL_00fc:  ldloc.2
    IL_00fd:  callvirt   instance void class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>::Invoke(!0,
                                                                                                                                                   !1)
    IL_0102:  nop
    IL_0103:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__2'
    IL_0108:  brfalse.s  IL_010c

    IL_010a:  br.s       IL_0140

    IL_010c:  ldc.i4     0x100
    IL_0111:  ldstr      "Hoo"
    IL_0116:  ldnull
    IL_0117:  ldtoken    Program
    IL_011c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0121:  ldc.i4.1
    IL_0122:  newarr     [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo
    IL_0127:  dup
    IL_0128:  ldc.i4.0
    IL_0129:  ldc.i4.0
    IL_012a:  ldnull
    IL_012b:  call       class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo::Create(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfoFlags,
                                                                                                                                                                               string)
    IL_0130:  stelem.ref
    IL_0131:  call       class [System.Core]System.Runtime.CompilerServices.CallSiteBinder [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.Binder::InvokeMember(valuetype [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpBinderFlags,
                                                                                                                                                                 string,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Type>,
                                                                                                                                                                 class [mscorlib]System.Type,
                                                                                                                                                                 class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Microsoft.CSharp]Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo>)
    IL_0136:  call       class [System.Core]System.Runtime.CompilerServices.CallSite`1<!0> class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Create(class [System.Core]System.Runtime.CompilerServices.CallSiteBinder)
    IL_013b:  stsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__2'
    IL_0140:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__2'
    IL_0145:  ldfld      !0 class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>>::Target
    IL_014a:  ldsfld     class [System.Core]System.Runtime.CompilerServices.CallSite`1<class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>> Program/'<>o__0'::'<>p__2'
    IL_014f:  ldloc.2
    IL_0150:  callvirt   instance void class [mscorlib]System.Action`2<class [System.Core]System.Runtime.CompilerServices.CallSite,object>::Invoke(!0,
                                                                                                                                                   !1)
    IL_0155:  nop
    IL_0156:  ret
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
// 경고: Win32 리소스 파일 DLR1.res을(를) 만들었습니다.
