
# CPSC 120-10 - Lab 2 - Instructions

Hello class! This markdown file will replace the PDF assignment prompt file we used in Lab 1. From now on, all labs will use this file (a file named *INSTRUCTIONS.md* at the root of your repository) as an assignment prompt.

Markdown files have become a standard in the open source community. They allow you to make documents that display "prettier" within certain viewers, yet is still easily readable in raw format, by humans. In your spare time, check out the following document: [MarkdownGuide.org - Basic Syntax](https://www.markdownguide.org/basic-syntax)

## Part 1 - Reading the Document: *Code Submission Guidelines*

Last week, you looked at a couple areas of a special document entitled ***Code Submission Guidelines***, which can be found in our class section on Canvas. This week, read the whole document before going any further, as you need to understand it in order to submit assignments correctly.

Just as a reminder: Last week, you should have followed the section entitled ***Git Config*** for Lab 1. If you forgot to do that last week, make sure to do it now.

## Part 2 - Screenshot Git Config

Open a terminal at the root directory of your Lab 2 repo and execute the following commands:

```shell script
git config --global user.name
git config --global user.email
```

If you've configured git correctly, you should see your CSUF-associated name and your CSUF-supplied email print to the terminal.

Take a screenshot of this information and save it in the root directory of this repo, using the file name *git_config.png*. Don't forget to add+commit+push !

### Optional Part of Part 2 - Credential Helper Store

This is an optional part of Part 2, but is highly recommended.

You may already have become irritated at git for asking your Github username and password for every single ```git push```. You're not alone!

Here we'll configure git to automatically store your authentication credentials so you don't have to enter them any more than is needed.

1. Open a terminal, and navigate to this repo's directory.

2. Execute the command ```git fetch``` (you don't need to know what this does now).

3. Observe that git asks for your credentials again.

4. Configure git to save your credentials with the following command:

    * ```git config --global credential.helper store```

5. Execute the command ```git fetch``` again. This time git will save your credentials.

6. Execute the command ```git fetch``` yet again. *This time*, git won't ask you for your credentials!

Because you used the --global switch, this new setting will apply to all repos on this machine, for your current user. In the future, you can make any git configuration local by omitting the *--global* switch.

## Part 3 - Your README.md file

Just like you did in the last lab, you should create a README.md file in your repository and fill in your personal details, using the section ***README.md*** inside the ***Code Submission Guidelines*** document. From now on, you'll be expected to do this for every assignment you submit.

Don't forget to double check your README.md file renders correctly from your repository's page on Github!

## Part 4 - Moving a File

For this part, you'll learn how git behaves when moving a file. Start by locating the file *MOVE_ME.md* in your local repo, and moving it into a new subfolder named *moved* (you will, of course, have to create the new subfolder).

Execute a *git status* command to see what git thinks has changed. You should notice it thinks two files have changed:
1. A *MOVE_ME.md* file has been deleted
2. A new *MOVE_ME.md* file has been added in another folder

Git can realize this was a simple rename, later. For now, you must perform a *git add* command against both the deleted file, and the new added file. Once you're finished, execute another sequence of git status, commit, push, and status.

## Part 5 - Git Pull and Git Log

For this part, your instructor will create an additional repository URL for you to clone somewhere else. We'll call this repository the *Part 5 repo*, to differentiate it from the main Lab 2 repository.

The URL is: https://github.com/puhfessorp/cpsc-120-pull-test

1. First, clone the *Part 5 repo* to a new folder in your Tuffix installation (***not*** where your Lab 2 repo is).
2. Issue a *git log* command to see a list of commits in the *Part 5 repo*. Make note of how many and which you see, and hit q on your keyboard to exit.
3. Next, continue to Part 6 of this assignment and get as much work done as you can.
4. Eventually, your professor will announce that changes have been made to the *Part 5 repo*, and that you should issue a *git pull* command against it.
5. When told, go ahead and issue that *git pull* command against the *Part-5 repo*. Do not do this until you're told to do so.
6. Issue a *git log* command to see a list of recent commits. You should see an additional log entry from your professor, which wasn't present before. You should also see a commit that indicates you've merged the remote's changes into your local repository branch.
7. Take a screenshot of the information shown in *git log*, and save it with the file name *git_log.png* in your main Lab 2 repository.

References:
* [git pull](https://git-scm.com/docs/git-pull)
* [git log](https://git-scm.com/docs/git-log)

## Part 6 - Variables and Assignment

For this part, you will write a simple program that adds two numbers together, and prints the result.

1. Create a file named main.cpp
2. Inside this file, create the basic structure of a C++ program
3. Declare a variable named *two* of type *int*. Do not initialize it with any value.
4. Declare a variable named *three* of type *int*. Do not initialize it with any value.
5. Declare a variable named *addition_result* of type *int*. Do not initialize it with any value.
6. Declare a variable named *division_result* of type *int*. Do not initialize it with any value.
7. Declare a variable named *omg_pi* of type *double*. In the declaration, initialize it to the value *3.14*.
8. Declare a variable named *pi_multiply* of type *double*. In the declaration, initialize it to the value *2.1*.
9. Declare a variable named *multiply_result* of type *double*. Do not initialize it with any value.
10. Using an assignment statement, set the value of the *two* variable to *2*.
11. Using an assignment statement, set the value of the *three* variable to (you guessed it) *3*.
12. Using another assignment statement, add the variables *two* and *three* together, and assign the result to the variable *addition_result*. Hint: Do not use any literals!
13. Using another assignment statement, divide the variable *three* by the variable *two*, and assign the result to the variable *division_result*.
14. Using yet another assignment statement, multiply the variables *omg_pi* and *pi_multiply* together, and assign the result to the *multiply_result* variable.

For now, we're beginners, so the above probably feels like a "significant accomplishment" toward completion of Lab Part 6. Thus, go ahead and commit+push your new source file to your Github repo. In the commit message, say something like "Do first half of Lab Part 6".

Finally, finish this part using the following steps:

1. Add a call to *cout* that displays the message "Result of integer addition: " followed by the contents of the *addition_result* variable, followed by a call to *endl* to end the line.
2. Again, use *cout* to display the message "Result of double multiplication: " followed by the contents of the *multiply_result* variable, followed by another line ending.
3. Finally, use *cout* to display the message "Result of integer division: " followed by the contents of the *division_result* variable, followed by another line ending.

You probably want to run the ```make``` command at the root of your directory to compile, run, and see the output of your program during your development.

When everything works, do the usual status+commit+push+status git commands, to send your work to your Github repository.

***Warning***: From this point forth, you will no longer be reminded to issue basic git commands like *status*, *add*, *commit*, or *push*. You'll be expected to do this on your own, using the guidelines described in Lab Week 1.
