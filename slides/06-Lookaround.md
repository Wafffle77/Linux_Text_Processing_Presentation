## Lookaround

Lookarounds match expressions before or after the pattern without including them in the final match, which can make it easier to have conditional matches.

- Positive lookaheads/lookbehinds match text after/before the pattern.

```bash
grep -oP '[0-9]+(?=%)' # Find percentages but just output numbers
grep -oP '(?<=holy\s+)\w+' # Find the expletive
```

- Negative lookaheads/lookbehinds match text that doesn't include the pattern.

```bash
grep -oP 'best(?!s)' # There can only be one
grep -oP '(?<!all of the )best' # Or is there?
```