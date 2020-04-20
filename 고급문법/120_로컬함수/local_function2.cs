using System;
using System.Collections;

// 1 ~ 5 까지의 숫자를 보관하는 컬렉션
class NumCollections : IEnumerable
{
    private int[] arr = new int[5] { 1, 2, 3, 4, 5 };

    public IEnumerator GetEnumerator()
    {
        // 오류만 확인..
        Console.WriteLine("arr 의 유효성 확인");
        if (arr == null) throw new Exception("null");

        return implementation();

        IEnumerator implementation()
        {
            foreach (int n in arr)
            {
                yield return n;
            }
        }
    }
}
class Program
{
    public static void Main()
    {
        NumCollections nums = new NumCollections();

        IEnumerator it = nums.GetEnumerator();
        Console.WriteLine("After GetEnumerator");

        while( it.MoveNext() )
        {
            Console.WriteLine(it.Current);
        }
    }
}