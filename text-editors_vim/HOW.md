
## Append [n] previous lines to current line
[n]J


# Undo / Redo
## Undo
[n]u
## Undo all changes to a line
U
## Redo
[n]<C>+r

# Ex Commands
## Find and Replace
### One Line, First Occurrence
:s/<search>/<replace>/
### One Line, All Occurrences (Global)
:s/<search>/<replace>/g
### Within Range, Global
:<start>,<end>s/<search>/<replace>/g
### All lines, Global
:%s/<search>/<replace>/g

# Visual Mode
# Block Visual - Arbitrary Select
v
# Whole Line Visual - Select Lines
<\1S>+v
# Rectangle Visual - Select Column
<C>+v

# Macros
## Record a Macro
1. Record macro at register '<letter>': q<letter>
2. <series of commands>
3. End macro: q
4. Run macro <letter> <num> times: <num>@<letter> (@<letter> runs it once)
## View all Recorded Macros
:reg
## View Specific Recorded Macros
:reg <register letters>

