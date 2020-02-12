#!/bin/bash
# Authors : Henry Whisman, Bryce Stempilitzks
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "input a file name: "
read filename
echo "input a regular expression: "
read regularExpression

grep $regularExpression $filename

# regular expression for a phone number
i=[0-9]{3}-[0-9]{3}-[0-9]{4}

echo "Number of phone numbers:"
egrep -c $i $filename

# regular expression for an email (every email must have an @ symbol)
email=@
echo "number of emails"
egrep -c $email $filename

# regular expression for a phone number starting with 303
phone2=^303-[0-9]{3}-[0-9]{4}
echo "303 phonenumbers:"
grep -o $phone2 $filename

# regular expression searching for @geocities.com anchored at the end of the string
email2="@geocities.com$"
grep $email2 $filename  >> email_results.txt
