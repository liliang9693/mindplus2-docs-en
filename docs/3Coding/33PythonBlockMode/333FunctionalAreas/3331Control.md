# 3.3.3.1 Control

Control statements can be broadly categorized into four types based on their structure and usage logic: while loops, for loops, conditional structures, and exception-handling structures.

## Loop Control

Used to repeat a section of code.

| Blocks                                                                                                                          | Note                                                                                                                                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./3331Control.assets/pic_1781246052829.png) | Loop indefinitely, repeating all the code within the module.                                                                                                                                                                                                                    |
| ![image](./3331Control.assets/pic_1781246067973.png) | Execution will not continue until the condition is true.                                                                                                                                                                                                                        |
| ![image](./3331Control.assets/pic_1781246079071.png) | Execute the program within the module until the condition is true, at which point the loop terminates.                                                                                                                                                                          |
| ![image](./3331Control.assets/pic_1781246090846.png) | Loop Break Conditions: Select "Break from Loop": Exits the loop entirely and executes the statements following the loop body. Select "Continue to Next Iteration": Exits the current iteration and proceeds to the next one. Note: This instruction must be used within a loop. |
| ![image](./3331Control.assets/pic_1781246100493.png) | When the program reaches this point, it will wait for 1 second before continuing with the rest of the code.                                                                                                                                                                     |

## for loop

Used for looping by count or by set.

| Blocks                                                                                                                          | Note                                                             |
| ------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| ![image](./3331Control.assets/pic_1781246188607.png) | Set the number of iterations to 10.                              |
| ![image](./3331Control.assets/pic_1781246199642.png) | Loop through a custom range from 1 to 10, with a step size of 1. |
| ![image](./3331Control.assets/pic_1781246214790.png) | Iterate through the loop and list each element in the list.      |

## Conditional Statements

Conditional Statements

| Blocks                                                                                                                          | Note                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| ![image](./3331Control.assets/pic_1781246311560.png) | A single-branch conditional statement executes the code in the loop body if the condition is true.          |
| ![image](./3331Control.assets/pic_1781246318795.png) | A two-way conditional statement: if the condition is true, execute Program 1; otherwise, execute Program 2. |

## Exception Handling Structures

Errors that may occur in the user capture program, thereby enhancing program stability.

| Blocks                                                                                                                          | Note                                                                                                                                                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./3331Control.assets/pic_1781246388179.png) | An exception-handling statement that, when an error occurs during the execution of the code within the `try` block, interrupts that execution and executes the code within the `except` block.                                                                                                                     |
| ![image](./3331Control.assets/pic_1781246396341.png) | An exception handling statement: when an error occurs during the execution of the code within the `try` block, the execution of that code is interrupted and the code within the `except` block is executed; however, the code within the `finally` block is executed regardless of whether an exception occurs. |
