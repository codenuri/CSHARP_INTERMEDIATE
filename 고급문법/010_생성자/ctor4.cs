using System;

class Animal
{
    protected Animal() { }
}
class Dog : Animal
{
    public Dog() { }
}

class Program
{
    static void Main()
    {
        //# 다음중 에러는 ?
        //Animal a = new Animal(); // 1. error
        Dog    d = new Dog();    // 2. ok
    }
}
