# Elixir Enum.each and Process.exit Bug

This repository demonstrates a potential bug involving the use of `Enum.each` and `Process.exit` within the same function in Elixir.  The improper use of `Process.exit` inside an `Enum.each` loop can lead to unexpected process termination and incomplete execution of the loop.

The `bug.ex` file contains the problematic code.  The `bugSolution.ex` file provides a corrected implementation.

**Problem:**

The original code uses `Process.exit` to terminate the process if a specific condition is met within the `Enum.each` loop.  This results in the loop prematurely stopping, which may leave resources uncleaned up and produce unexpected results.

**Solution:**

The solution replaces the direct use of `Process.exit` with a more controlled mechanism.  This involves using a conditional return value and handling the exit condition outside the loop.

This example highlights the importance of careful consideration of side effects and process termination within loops and functions to avoid subtle bugs that are not immediately apparent.