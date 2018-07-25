using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace calculator_app
{
    class Program
    {
        static void Main(string[] args)
        {
            var number1 = getNumberFromUser("Please enter the first number");
            Calculator.EnterNumber(number1);

            var number2 = getNumberFromUser("Please enter the second number");
            Calculator.EnterNumber(number2);

            var answer = Calculator.Add();
            Console.WriteLine($"The answer is {answer}");
                        
            Console.ReadLine();
        }

        private static int getNumberFromUser(string prompt)
        {
            Console.WriteLine(prompt);
            var response = Console.ReadLine();
            if(int.TryParse(response, out int number))
            {
                Console.WriteLine();
                return number;
            }

            Console.WriteLine("That's not a number.  Please try again.");
            return getNumberFromUser(prompt);
        }
    }
}
