## Awk


- Specializes in processing tabular data (but is flexible enough to do a lot more)

- More extensible than both grep and sed.

- Uses regular expressions and rules to split data into records and fields, then recombines those records and fields after processing.

- Has a ton of additional functions that make it far more extensible than simple regex support.

- Scripts can be loaded from files with the `-f` option or supplied on the command line.

```bash
# Gets all the non-root users with shells on a system
awk -F: '$1 != "root" && $7 ~ /sh$/ {print $1}' /etc/passwd 
```

- Can be used as a full programming language, much to the dismay of some.

- Full user manual available [online](https://www.gnu.org/software/gawk/manual/gawk.html).