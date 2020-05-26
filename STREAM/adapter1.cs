using System;
using System.Collections.Generic;

class Stack 
{
    public List<int> st = null; 
    public Stack(List<int> s) { st = s; }
    
    public void Push(int a) { st.Add(a);  }
    public int  Pop()
    {
        int n = st.Count - 1;
        int temp = st[n];
        st.RemoveAt(n);
        return temp;
    }
}

class Program
{
    public static void Main()
    {
        List<int> st = new List<int>();

        st.Add(10);
        st.Add(20);

        // st를 stack 처럼 사용하고 싶다.
        Stack s = new Stack(st);

        s.Push(30);
        s.Push(40);

        int n = s.Pop(); // 40
        Console.WriteLine(n);

        
    }
}