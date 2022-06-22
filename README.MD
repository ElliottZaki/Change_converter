# Project title: 
Change converter - Process review exercise.

# Motivation:
Create a programme that given a number in pounds and pence, work out the most efficient way of breaking it down into notes and coins, e.g. 11.55 becomes ["£10", "£1", "50p", "5p"].

# Acceptance Criteria
change_generator.convert(6.42)<br> 
 => ["£5", "£1", "20p", "20p", "2p"]<br> 
change_generator.convert(40)<br> 
 => ["£20", "£20"]<br> 
change_generator.convert(16.30)<br> 
 => ["£10", "£5", "£1", "20p", "10p"]<br> 
change_generator.convert(19.99)<br> 
 => ["£10", "£5", "£2", "£2", "50p", "20p", "20p", "5p", "2p", "2p"]<br> 
change_generator.convert(76.81)<br> 
 => ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]<br> 

# Extension Options
Write a program that takes an array of note and coin values and returns the result of summing these amounts, in £00.00 format.<br> 

Write a change generator for a different currency e.g. USD.<br> 

Turn you change converter into a cash machine, but pre-loading it with notes and change. Keep track of how much money it has dispensed, and notify the user when it runs out.<br> 

# Installation instructions:
On CML type:<br> 
brew install ruby<br>
current Ruby version as per last updated push(ruby-3.0.0)<br>
gem install rspec<br>
rspec --init<br>

# How to run programme:
On CML type: <br>
cd change_converter <br>

# How to run tests:
On CML type:<br> 
rspec<br>

# Build status:
Testing stage<br>
