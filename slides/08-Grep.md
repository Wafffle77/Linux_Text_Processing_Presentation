## Grep

Grep is a utility that allows stdin to be filtered to stdout with regex.

- By default, it uses a fairly limited and non-standard regex flavor, so I usually run it with the `-P` option to enable more functionality.

- It has several different options to change how it works, including but not limited to:
    - `-P` Allows the use of Perl-style regular expressions.
    - `-o` Only output matches instead of the entire line.
    - `-v` Invert the match, so only output lines that don't match. 
        - Doesn't work with `-o`.
    - `-A`, `-B`, and `-C` make grep print the lines after/before/surrounding the match for context.

- It also takes file arguments on the command line to read from instead of reading from stdin.

```bash
grep -P 'Stop cat abuse!' myFile.txt
```