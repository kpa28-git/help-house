# Helix

# Command Mode
* `:` enters Command mode
* `:q(uit)`/`:q(uit)!` quit / force quit
* `:w(rite)`: save file
* `:wq`|`:write-quit`: save and quit

# Insert Mode
* `i` enters Insert mode before selection
* `a` enters Insert mode after selection (append)
* `c` enters Insert mode after deleting the selection (change) - shortcut for `di`
* `I` enters Insert mode at the first non-whitespace character on the line
* `A` enters Insert mode at the end of the line (append)
* `o`/`O` enters Insert mode at a newly opened line after/before the cursor line

# Normal Mode
* `<esc>` enters Normal mode
* `<n><cmd>` repeats the movement/selection command n times

## Movement
* `h`,`j`,`k`,`l` keys move the cursor
* `gg`/`<n>gg`/`ge` move to first/nth/last line in file
* `w`/`W` move to the next word with/without special delimiting
* `e`/`E` move to end of current word with/without special delimiting
* `b`/`B` move backwards to start of current word with/without special delimiting

### Jump List
* `C-s` to save current position to the jumplist
* `C-i`/`C-o` go forward/backward in the jumplist

## Selection
* `%` selects the whole file
* `;` collapse the selection
* `s` select all instances of a regex pattern within the selection
* `x` select line (repeated presses extend the selection)
* `f`/`F` select to a character forward/backward (inclusive)
* `t`/`T` select to a character forward/backward (exclusive)
* `A-.` repeats the last `f`/`t`, extending the selection

### Multi-Selection
* `C`/`A-C` copies current selection below/above
* `A-s` splits selection into a selection at each line
* `,` collapse multi-select to single line selection

### Searching
* `/` to search forward in file, and `?` to search backwards
* `*` copies the selection to the primary search register `/`
* `n`/`N` for next/previous match (same for both `/` and `?`)

### Select Mode
* `v` enters select (visual) mode, where all motions extend the selection
* In select mode `n`/`N` extends the selection with search matches instead of just jumping to them

## Text Modification
* `.` repeats the last insertion
* `d` deletes the selection
* `r` replaces all chars in the selection with the next typed char
* `J` joins the lines in the selection
* `&` aligns selections
* `"<reg>` selects a different register

### Undo
* `u`/`U` undo/redo

### Copy/Paste
* `y` yanks (copies) the selection
* `p`/`P` pastes after/before selection
* `space-Y`/`space-P` to yank/paste on the system clipboard
* `R` replaces (pastes over) the selection

### Macros
* `Q` start/stop recording a macro (default macro register @)
* `q` run macro (default macro register @)

### Programming
* `C-c` toggle line comment
* `>`/`<` add/remove indent
* `C-a`/`C-x` increments/decrements the selected number
