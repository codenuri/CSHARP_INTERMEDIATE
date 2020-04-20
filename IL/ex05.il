.assembly ex05 { }
.assembly extern mscorlib {}

.class public Program
{
    .method public static void foo() cil managed
    {
        ldstr "foo"
        call void [mscorlib]System.Console::WriteLine(string)
        ret
    }
    .method public static void Main() cil managed
    {
        .entrypoint

        ldstr "Main"
        call void [mscorlib]System.Console::WriteLine(string)

        call void Program::foo()

        ret
    }
}



