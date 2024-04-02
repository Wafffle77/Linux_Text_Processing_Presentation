## Anchors

Anchors allow your expression to match parts of the string that aren't necessarily characters, but are still there.

- `^` Matches the beginning of the line (or string).

```bash
grep -P '^\s+' # Matches whitespace at the beginning of the line
```

- `$` Matches the end of the line (or string).

```bash
grep -oP '#.*$' # Matches comments that start with `#`
```