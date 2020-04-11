
# POSIX Man Pages
`man 1p <cmd>`

# Printing to stdout

# Pseudo array
The POSIX standard does not specify arrays.
If you want to loop over a list of elements there a few ways to do this:
* A string of strings delimited by some character (here it's a single space).
Then use tr to convert the delimiter to a newline and read until the end of input.
```
myArray="$A $B $C $D ..."

echo "$myArray" | tr ' ' '\n' | while read elem; do
	# use elem here
done
```
* Use `set` to set the positional parameters and loop over those.
Note that `set` can expand globs into list of paths (eg `$HOME/*`).
You can use `shift` to shift off elements of the pseudolist.
To append more args to the positonal parameters use `set -- "$@" $A $B $C $D ...`
```
set -- $A $B $C $D ...

for elem in "$@"; do
	# use elem here
done
```
