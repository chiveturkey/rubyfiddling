# rubystdin
Experimenting with STDIN in Ruby

# Problem Demonstration
If you use `ARGF` to read piped in data from `STDIN`.  You cannot then use `STDIN` for interactive keyboard input.  To
get around this, you can create a new file descriptor, and bind `$stdin` to it instead.

```
$ echo -ne 'line1\nline2\n' | ./rubystdin.rb
Values piped in to STDIN:

line1
line2

Attempt to interactively read input from keyboard on STDIN.  This will fail:

Input: The Input is:


Create a new file descriptor, and tie $stdin to it:

The new file descriptor is: 5

Then attempt to interactively read input from keyboard on STDIN.  This will succeed:

Input: Success!
The Input is:
Success!
```
