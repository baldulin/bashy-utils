# Bashy-Utils:

This set of little scripts aims to simplify a lot bash tasks.

## Content:
* table Creates a table from input
* complete.sh Basic Bash Completion for all scripts

## Usage:

### table
Splits lines by whitespaces and puts them as rows. Comes with
five different styles (1-4) are unicode and 0 is basic ascii.
These styles can be called with "-0", "-1" and so on.

If you want to change the style according to your needs use
"-T" to specify the "T"-Junctions, "-C" to specify the corners
"-X" to specify the cross and "-V","-H" to specify the 
horizontal and vertical symbols.

The last option is "-t" which will output a second line after 
the first row is completed . Like a typical title row.

