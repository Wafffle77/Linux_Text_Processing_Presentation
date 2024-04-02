## Character Classes

- `[` and `]` define a character set. It acts as one character and will match any of the characters inside of it
    - It also allows for ranges to be specified by putting a `-` between characters. Of course, this means that `-` has to be escaped inside of character sets
    - Starting a character set with `^` negates it, matching any character the set doesn't have.

```bash
grep -P '[A-Z]+_[A-Z]+' # Matches two uppercase words seperated with an underscore
grep -P '[a-zA-Z0-9_]+' # Matches any alphanumeric string with underscores in it
```

- `.` matches any character except newlines and carriage returns, plain and simple

```bash
grep -P '.*' # Ye olde wildcard
```
