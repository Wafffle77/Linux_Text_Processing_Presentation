## Sed

Sed is a stream editor. It is similar to grep, but it has more expressive and flexible options for modifying streams instead of just filtering.

The `-e` option can be used to add expressions to be executed.

Some basic expression types:

- `s/1/2/` replaces `1` with `2`.
    - A `g` can be added to the end to replace every instance instead of just the first one.
- `/1/d` deletes lines containing `1`.
- `y/1/2/` replaces characters in `1` with their corresponding characters in `2`.

```bash
sed -e 's/you/me/g' # All your base are belong to us
```