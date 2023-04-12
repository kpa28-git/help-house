
## Local recursive sync <source> and <dest> paths
`rsync -aXP <source> <dest>`

## Recursive mirrored sync (deletes <dest> files not in <source>)
`rsync -aXP --delete <source> <dest>`

## Remote recursive sync
`rsync -aXP <source> <user>@<remote>:<dest>`


