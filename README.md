# New York Times Spelling Bee Solver

##Video Explaination 
https://www.loom.com/share/ca9d3e3678f641778868908355553bc1

##What is New York Times Spelling Bee?
NYT Spelling Bee is a game on the NYT Website played by millions everyday. The game works as follows: players are given seven letters with one highlighted in the middle. The goal of the game is to create as many words that 1) are 4 or more letters, 2) only use the 7 letters given, and 3) use the highlighted letter in the middle. The more words you find, the more points you get!

##How the Application Works
I play this game everyday and was always frustrated I couldn't find all the words, so I built this web application that acts as an answer key. The user is asked for that day's seven valid letters and the must use letter. That information is sent to a backend servlet which searches the entire dictionary for valid words. If a word is 4 or more letters, only use the 7 letters given, and uses the must use letter, it is added to a solutions array that is sent back to the jsp homepage file. The solutions are then printed on the homepage sorted by length of the word.

##Example Photo
<img width="1715" alt="image" src="https://user-images.githubusercontent.com/84340435/182040998-28724a10-c85d-411a-9745-b40eb79a9df9.png">
