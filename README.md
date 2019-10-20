```
 |          |             |
 __ \   _ \ | __ \        __ \   _ \  |   |  __|  _ \
 | | |  __/ | |   |_____| | | | (   | |   |\__ \  __/
_| |_|\___|_| .__/       _| |_|\___/ \__,_|____/\___|
             _|
Concise GNU/Linux markdown helpfiles.
```
# General
Houses helpful concise information primarily about GNU/Linux, POSIX, and related topics arranged in a flat layout. The intent is for a set of concise and practical help files as a supplement to primary resources (ie man pages).

I started this a while ago. It is fairly incomplete but we'll see if it grows, not making promises. Look at the TODO.md to see the state of things.

# Guidelines and Structure
## Topics
Each directory is about a particular topic. Each topic may or may not have an associated general category. The naming convention is: '\<General Category\>_\<Specific Topic\>' or simply '\<Specific Topic\>' if there is no associated category. Dashes ('-') are used instead of spaces. If a Specific Topic has an underscore in its name, it is replaced by a dash ('wpa_supplicant' -> 'wpa-supplicant').

As of now topics can be broad (such as 'networking') or narrow (such as 'wpa-supplicant'). It is generally encouraged to break large broad topics into smaller narrower topics where possible, but the ultimate goal is the best arrangement for practical use, and there may not be one-size fits all rules for this.

## Content
Within each topic there are what *HOW*, *WHAT*, and *WHERE* Markdown files, in addition to any additional optional files or scripts.

### The HOW (how.md)
- The *HOW* lists commands or templates of how to use the tool(s)
- This should be the most useful, detailed, and repeatedly used help file of the three
- Think of it like a very practical manpage of examples for something you mostly know how to use
- There is a special focus on *obscure* but *highly useful* commands
- Generally the only plaintext is titles and subtitles that correspond to usage categories and units
- Contains as much of the most useful functionality as possible
- Eventually this should be made to be *easily greppable*

### The WHAT (what.md)
- The *WHAT* gives a concise rundown of what it's all about
- Starts with a *One Sentence* overview of what it is
- Gives a brief bit of *Background*
- Anything else important about what it is
- Should be mostly plain text with any commands/code *bolded*
- Think executive summary

### The WHERE (where.md)
- The *WHERE* tells you where to get it and where to configure it
- Contains *Install* and *Configure* sections if relevant that describe how best to do these
- Should be mostly plain text with any commands/code bolded
- Resources for further information can be linked here in a *Sources* section

### Other Content
- Each topic can have other files besides the required ones, such as images, scripts, and cheatsheets
- Other content should be removed and subsumed by the required files as much as possible
- Shell scripts, including example installation/configuration files may be included - use these at your own risk
- Shell scripts try to be POSIX-compliant unless there is a reason for them not to be
