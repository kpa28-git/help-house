
## Log into remote - remote sshd must be running and allow password logins if it doesnt have your public key
`ssh <user>@<remote>`

## Copy public key to remote - allows passwordless ssh if remote sshd configured as such
`ssh-copy-id <user>@<remote>`
