
# Show Changes (`git diff`)
## Show changes between working directory and index
`git diff`

## Show changes between index and HEAD
`git diff --cached`
or
`git diff --staged`

## Show changes between working directory and HEAD
`git diff HEAD`

# Pull Requests (PRs)
## Create a branch to submit PRs from
```
git checkout master        # checkout master branch 
git pull upstream master   # sync your master branch with upstream
git checkout -b my_feature # create a separate feature branch
```

# Saving / Unsaving (`git stash`)
## Stash (save staged changes for later)
`git stash`

## Unstash (reload previously stashed changes)
`git stash pop`

