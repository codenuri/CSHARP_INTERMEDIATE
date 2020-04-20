.assembly ex06 { }
.assembly extern mscorlib {}

.class public Program
{
    .method public instance void foo() cil managed
    {
        ldstr "foo"
        call void [mscorlib]System.Console::WriteLine(string)
        ret
    }

    .method public specialname rtspecialname instance void .ctor() cil managed
    {
        // 기반 클래스 생성자 호출
        ldarg.0
        call       instance void [mscorlib]System.Object::.ctor()
        ret
    }


    .method public static void Main() cil managed
    {
        .entrypoint

        // Program p = new Program()
        .locals init( class Program V_0 )
        
        newobj  instance void Program::.ctor()

        stloc.0 

        // p.foo()
        //call void Program::foo()
        ldloc.0 
        callvirt instance void Program::foo()

        ret
    }
}



