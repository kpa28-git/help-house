
# Julia
## Pkg
### Enter Pkg shell (from Julia shell)
`]`

### Create new empty project
`pkg> generate <project>`

### Activate project env (must be run in the project root)
`pkg> activate .`

### Add a package dependency to the project
`(<project>) pkg> add <dep>`

### Add a package dependency to the default project at `~/.julia/environments/v*/`
`pkg> add <dep>`

