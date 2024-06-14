# Checks... in LaTeX!

Designed to work with [VersaCheck](https://www.amazon.com/dp/B0106CBE3S) three-to-a-page wallet-sized checks.

Requires xelatex, which is included with the devcontainer.

Commands:

- `\emptychk` - Prints an empty check to be filled by hand later. Takes one argument: check number.
- `\chk` - Prints the full check, with check register (left hand side). Takes six arguments: check number, date, recipient, amount, verbose amount, and memo.

Use the `\newcommand{\routingnumber}{#####}` code block to set defaults for every check.
