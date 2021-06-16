# one44-cli
CLI User Interface for marking math problems

## Installation

Install the gem:

`gem install one44-cli`

## How to use
$`one44-cli -t path/to/test/file`

### Do not randomly order test questions (default)
Test questions will be ordered as listed in the test file if the `--not-random-sort-questions` is specified:

$`one44-cli --not-random-sort-questions`

### Randomly order test questions
Test questions are randomly ordered. Make the behaviour explicit by specifying one of the options below:

$`one44-cli`

$`one44-cli -r`

$`one44-cli --random-sort-questions`

$`one44-cli --sort-questions random`