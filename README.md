__Learning Objectives__
- Understand how automated tests improve reliability of code by verifying previous behavior is unaffected by new changes.
- Be introduced to a different way to write unit tests, written in business language with clear, easy to follow examples.
- Add a new feature to an existing program following the principles of test driven development.

[ git checkout step1 ]

Walk through program.  
Show program.cs
Show calculator.cs
Demonstrate functionality by running the program.

*New requirement from boss:*  Make our program do subtraction.

[ git checkout step2 ]

Great, the new requirement has been met.
Run the program - does it do subtraction?  Excellent.  Ship it.

...Anyone see any problems?

Software testing is nothing new.  Every time you run your program to see what it does you're testing it...but you're *manually* testing it.

Software has the unique advantage that, when designed properly, it can be *very* testable - with __automated__ tests.  Tests that can run every time you change your code.  Tests that ensure new features don't break existing features.  Tests that make sure once you fix a bug it __stays__ __fixed__.

Show specflow test for addition
Run tests
Show how steps are linked up with the test itself

[ Write a new test for subtraction ]

Explain how this is a special type of test driven development, this is __behavior__ driven development.  It helps the product owner and the developer both clearly agree on what the software is supposed to do.

Here's our new test, it's failing - let's implement it.

[ git checkout step3 --force ]

Re-run the tests.

We can take these tests to our product owner and get them to sign off on the *behavior* of the program.
We can even experiment with other values (edge case testing) to make sure that our program properly handles odd cases.  [ show example of negative addition ]

__Understanding questions:__
- What is the benefit of testing software?
- Why might you want to write tests in plain english instead of just straight in code?
- Why did we write the test for subtraction before we wrote the code?


