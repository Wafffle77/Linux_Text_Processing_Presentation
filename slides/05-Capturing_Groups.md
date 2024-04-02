## Capturing Groups

Some tools allow you to pull specific parts of a match out using capturing groups

- A basic capturing group is any part of the pattern surrounded in `(` and `)`.
- Most tools will allow you to extract the part of the matched text in these groups separately from the rest of the match.

```bash
grep -P '(captured)' # Ironically, you can't get the matched part of a capturing group with grep
```

- However, capture groups are also useful for grouping parts of the pattern together for things like quantifiers

```bash
grep -P '(ho *)+' # Detects the presence of santa (or dyslexic gardeners)
```

- This is why non-capturing groups exist. Prefixing the internal pattern with `?:` causes the pattern to not capture.
    - This can sometimes cause errors if the tool doesn't support non-capturing groups

```bash
grep -P '(?:ho *)+' # We don't want to capture him, just see if the milk and cookies are gone
```
