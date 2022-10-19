
## Join [n] previous lines to current line
`[n]J`


# Undo / Redo
## Undo
`[n]u`
## Undo all changes to a line
`U`
## Redo
`[n]<C>+r`

# Ex Commands
## Search and Replace
### Single Line, First Occurrence
`:s/<search>/<replace>/`
### Single Line, All Occurrences
`:s/<search>/<replace>/g`
### Line Range, All Occurrences
`:<start>,<end>s/<search>/<replace>/g`
### All Lines, All Occurrences
`:%s/<search>/<replace>/g`
## Capture Groups
`:s/\(<search>\)/\1/g`

## Global
### Yank matched lines to register a
`:g/<search>/y A`
### Copy all matched lines
```
:g/<search>/y A
:let @+ = @a
```

# Visual Mode
# Block Visual - Arbitrary Select
`v`
# Whole Line Visual - Select Lines
`<\1S>+v`
# Rectangle Visual - Select Column
`<C>+v`

# Macros
## Record a Macro
1. Record macro at register '<letter>': `q<letter>`
2. <series of commands>
3. End macro: `q`
4. Run macro <letter> <num> times: `<num>@<letter>` (`@<letter>` is equivalent to `1@<letter>`)
## View all Recorded Macros
`:reg`
## View Specific Recorded Macros
`:reg <register letters>`

# Buffers
## Switch to buffer by number
`:b[n]`
## Unload current buffer
`:bd`

