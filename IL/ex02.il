.assembly ex02 { }

.method static void foo() cil managed
{
    .entrypoint

    call  void goo()

    ldc.i4.1    // push 1
    ldc.i4.2    // push 2
    call void hoo(int32 a, int32 b)
    ret
}

.method static void hoo(int32 a, int32 b) cil managed
{
    ret
}

.method static void goo() cil managed
{
    ret
}