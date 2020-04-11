# pip


# Meta
## Show help (there are no man pages by default)
`pip help`

## Verify environment package dependencies aren't broken
`pip check`

## Pip debug
`pip debug`

# Package Information
## Print all locally installed packages (may include conda installed packages)
`pip list`

## Show information about an installed package, including non-version incoming and outgoing dependencies
`pip show`

## Search remote package db
`pip search <query>`

# Package Management
## Install package (can break environment with warning)
`pip install <pkg>`

## Upgrade package (can break environment with warning)
`pip install -U <pkg>`

## Remove package (can break environment with warning)
`pip uninstall <pkg>`

## Build wheel - this normally happens automatically, but it can be useful for debugging a problem in the install (it's often a wheel problem)
`pip wheel <whl>`

