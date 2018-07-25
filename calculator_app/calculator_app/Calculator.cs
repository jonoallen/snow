using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace calculator_app
{
    public static class Calculator
    {
        private static List<int> numbers = new List<int>();

        public static void EnterNumber(int number)
        {
            numbers.Add(number);
        }

        public static int Calculate()
        {
            var answer = numbers.First();

            foreach(var number in numbers.Skip(1))
            {
                answer = answer + number;
            }

            return answer;
        }
    }
}
