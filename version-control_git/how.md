

# Git Diff
## Show changes between working directory and index
`git diff`

## Show changes between index and HEAD
`git diff --cached`
or
`git diff --staged`

## Show changes between working directory and HEAD
`git diff HEAD`

# General steps to creating a branch to submit PRs from
```
git checkout master		# checkout master branch 
git pull upstream master	# sync your master branch with upstream
git checkout -b my_feature 	# create a separate feature branch
```
