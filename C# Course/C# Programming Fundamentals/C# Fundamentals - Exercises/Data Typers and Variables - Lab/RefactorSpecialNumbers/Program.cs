﻿using System;

namespace RefactorSpecialNumbers
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());

            int sum = 0;
            int number = 0;
            bool checker = false;

            for (int i = 1; i <= n; i++)
            {
                number = i;

                while (i > 0)
                {
                    sum += i % 10;
                    i = i / 10;
                }
                checker = (sum == 5) || (sum == 7) || (sum == 11);
                Console.WriteLine("{0} -> {1}", number, checker);
                sum = 0;
                i = number;

            }
        }
    }
}
