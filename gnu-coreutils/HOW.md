
# bash
## globbing
* Globbing can be used to do wildcard expansion in bash
### Get all files in current directory
*
### getting all files of <type> extension
*.<type>
### getting all files of <type> extension in all directories
*/*.<type>
### Find all files of <type> that are not symlinks
find *.<type> -type f


# sed
* Note sed -i to replace strings in files inplace is a GNU-ism (non-POSIX compliant behavior)

## Replace String in all file
sed -i --follow-symlinks 's/<find>/<replace>/g' <file>

## Delete lines where string is found in file
sed -i --follow-symlinks '/<find>/d' <file>

## Remove blank/empty lines from file
sed -i --follow-symlinks '/^[[:space:]]*$/d' <file>
