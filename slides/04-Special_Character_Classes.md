## Special Character Classes

Some normal characters can be be prefixed with `\` to match characters of a predefined category.

- `\w` - Matches alphanumeric characters and `_`.
- `\d` - Matches digits (0-9)
- `\s` - Matches whitespace (spaces, newlines, etc.)

Uppercase versions of these characters will negate the predefined set, matching anything that isn't in them.