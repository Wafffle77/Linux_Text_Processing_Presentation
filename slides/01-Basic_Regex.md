## Regex Basics

- To start, most characters don't have any special meaning, and simply match themselves.

```bash
grep -P 'just an ordinary string' # Nothing special
```

- Some characters do have special meaning and can change the way the pattern matches.

```bash
grep -P 'myFile.txt' # Will match more than you think
```

- If a character has special meaning, it can be escaped (removing the special meaning) by prepending a backslash (`\`)

```bash
grep -P 'myFile\.txt' # Will match as much as you think
```
