
# sed
* Note sed -i to replace strings in files inplace is a GNU-ism (non-POSIX compliant option)

## Replace String in all file
`sed -i --follow-symlinks 's/<find>/<replace>/g' <file>`

## Delete lines where string is found in file
`sed -i --follow-symlinks '/<find>/d' <file>`

## Remove blank/empty lines from file
`sed -i --follow-symlinks '/^[[:space:]]*$/d' <file>`
