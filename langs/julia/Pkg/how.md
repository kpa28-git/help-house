# Pkg (Julia Standard Package Manager)

## Enter Pkg shell
`julia> ]`

## Create a new empty package
`pkg> generate <package>`

## Create a new project or activate an existing project in the current directory
`pkg> activate .`

## Activate the package test environment (Julia 1.2+ only)
`(<package>) pkg> activate ./test`

## Instantiate a project (installs packages from a manifest.toml and project.toml)
`(<project>) pkg> instantiate`

## Add a package dependency to the project
`(<project>) pkg> add <dep>`

## Add a package dependency to the default project
`pkg> add <dep>`

## Run the package build (executes `deps/build.jl`)
`pkg> build <package>` || `(<package>) pkg> build`

## Run the package tests (executes `test/runtests.jl`)
`pkg> test <package>` || `(<package>) pkg> tests`

# Notation
* `julia>`: indicates Julia shell
* `pkg>`: indicates Pkg shell with default environment activated
* `(<project>) pkg>`: indicates Pkg shell with `<project>` environment activated

