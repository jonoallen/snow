$msg = @"
Learning objectives:

    Understand how automated tests improve reliability of code by verifying previous behavior is unaffected by new changes.

    Be introduced to a different way to write unit tests, written in business language with clear, easy to follow examples

    Add a new feature to an existing program following the principles of test driven development.
"@
Read-Host -Prompt $msg


$msg = @"
Background:
    * We have an amazing application.  It is fantastic.  It does what our business needs.
    * For the purposes of this lesson, we will maximize our signal-to-noise ratio by keeping a simple example.
    * Our application adds numbers.
"@
Read-Host -Prompt $msg


# Show code @ beginning
read-host "[Show code @ beginning]"
git checkout step1
devenv .\calculator_app\calculator_app.sln


$msg = @" 
Everything is great.  Business is doing well.

Now we have decided to expand our offerings and also offer subtraction services.

We are under budget constraints, and other fires are keeping us busy.

I would love to re-architect the program, perhaps even write it new from scratch, but we just need to get this feature in. 
"@
Read-Host -Prompt $msg


#[ Show changing the addition sign to subtraction sign ]
git checkout step2



$msg = @"
Great.  New requirements met.  Ship it.



You can see the problem right?  In this application it's obvious.  In a real application with hundreds of features and dozens of execution paths it's not always that clear.   



Software has the unique advantage that, when designed properly, it can be _very_ testable.

No, that does not mean you run the program and poke at it yourself.

Automated testing.  Automated tests that run every time you change your code.  Automated tests that ensure new features don't break existing features.   
"@
read-host -Prompt $msg



read-host "[ Show example of basic specflow tests covering addition feature ] "

read-host "[ Run the tests ] "

 

read-host "How did this work? "

 

read-host "[ Show how test statements link up to executed code ] "

read-host "[ Explain regular expressions to match up operations ] "


$msg = @"
Now let us write a new test that shows how the new requirement is supposed to behave.

Note, that is an important distinction.  This type of testing is called 'behavior driven development' - it cares more about what the software is actually supposed to do, and less about how it does it.  There are lots of different types of tests that test software at different levels – unit tests, functional tests, integration tests, system tests...but let's not get ahead of ourselves. 
"@
read-host -Prompt $msg


read-host "[ Write a new test for subtraction, show it failing ] "



read-host "Now let us implement that test. "



read-host "[ Write the new code ] "

read-host "[ Re run the tests ] "



read-host "We can take these tests to our business analysts / product owners – we can show them in their language and with simple, straightforward examples how the software will behave.   "





read-host "Understanding questions: "

read-host "* What is the benefit of testing software? "

read-host "`to What are different ways to test software? "

read-host "* How do these sentences turn into executable tests? "

read-host "* How do we know that the new feature does not mess up the existing behavior? "

write-host "Thank you, have a nice day."
