# one44-cli
CLI User Interface for marking math problems

## Installation

Install the gem:

`gem install one44-cli`

## How to use
Create a test file containing math problems:

E.g
```testfileexample
1x1		2x2		3x3
4x4		5x5		6x6
```

Run `one44-cli` as follows:

$`one44-cli -f path/to/test/file`

### Do not randomly order test questions (default)
Test questions will be ordered as listed in the test file if the `--not-random-sort-questions` is specified:

$`one44-cli --not-random-sort-questions`

### Randomly order test questions
Test questions are randomly ordered by specifying one of the options below:

$`one44-cli -r`

$`one44-cli --random-sort-questions`

$`one44-cli --sort-questions random`