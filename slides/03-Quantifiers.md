## Quantifiers

Quantifiers allow you to match multiple of a preceding character, class, or group.

- `+` Matches one or more of the preceding character
```bash
grep -P 'a+h' # Allows for screaming at variable volume
```

- `*` Matches zero or more of the preceding character

```bash
grep -P 'Content-Length *: *[0-9]+' # Finds the 'Content-Length' header in an HTTP response
```

- `?` Matches zero or one of the preceding character
    - Additionally, putting `?` after another quantifier makes the previous quantifier lazy and causes it to match as little as possible instead of as much as possible.

```bash
grep -P 'colou?r' # Lets us go international by allowing people to spell color wrong
```