Regular Expressions Tasks

This project involves creating Ruby scripts to perform pattern matching using regular expressions. Each task focuses on different aspects of regular expression usage.
Task 0: Simply Matching School

    Objective: Create a regular expression that matches the word "School".
    File: 0-simply_match_school.rb
    Example Usage:

    bash

    ./0-simply_match_school.rb School | cat -e
    ./0-simply_match_school.rb "Best School" | cat -e

Task 1: Repetition Token #0

    Objective: Find the regular expression that matches specific patterns.
    File: 1-repetition_token_0.rb
    Example Usage:

    bash

    ./1-repetition_token_0.rb "School" | cat -e

Task 2: Repetition Token #1

    Objective: Find the regular expression that matches specific patterns.
    File: 2-repetition_token_1.rb
    Example Usage:

    bash

    ./2-repetition_token_1.rb "School" | cat -e

Task 3: Repetition Token #2

    Objective: Find the regular expression that matches specific patterns.
    File: 3-repetition_token_2.rb
    Example Usage:

    bash

    ./3-repetition_token_2.rb "School" | cat -e

Task 4: Repetition Token #3

    Objective: Find the regular expression that matches specific patterns without using square brackets.
    File: 4-repetition_token_3.rb
    Example Usage:

    bash

    ./4-repetition_token_3.rb "School" | cat -e

Task 5: Not Quite HBTN Yet

    Objective: Create a regular expression matching strings that start with "h", end with "n", and have any single character in between.
    File: 5-beginning_and_end.rb
    Example Usage:

    bash

    ./5-beginning_and_end.rb 'hn' | cat -e

Task 6: Call Me Maybe

    Objective: Create a regular expression matching a 10-digit phone number.
    File: 6-phone_number.rb
    Example Usage:

    bash

    ./6-phone_number.rb 4155049898 | cat -e

Task 7: OMG WHY ARE YOU SHOUTING?

    Objective: Create a regular expression matching capital letters only.
    File: 7-OMG_WHY_ARE_YOU_SHOUTING.rb
    Example Usage:

    bash

    ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I really HOPE" | cat -e

Task 8: TextMe

    Objective: Parse log files to extract sender, receiver, and flags information.
    File: 100-textme.rb
    Example Usage:

    bash

./100-textme.rb 'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]' | cat -e

