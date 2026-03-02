---
layout: paper
title: "App: Lost in Translation"
date: 2014-07-08
author: Uki D. Lucas
permalink: "/posts/app-lost-in-translation/"
---

 #byUkiDLucas #public
 
# App: Lost in translation

From time to time, each of us working in the app development, be that an UI/UX designer, developer or project manager has to come up with user messages on the spot.
We all think: "Oh this is a temporary text, a placeholder, we will fix it later.. Question: How many times this never happens?" And you would be surprised to know that this happens a lot starting from major international product development, brands that we all look up to, to the small side projects we do for fun.
At CyberWalkAbout, having a portfolio of over a dozen apps, some of the small "just for fun"projects surprise by being more successful than some of those which required a big effort and were expected to become a hit. App analytics help then take those apps to the next level of success.
One of the big things to pay attention are the statistics of usage per country or language which might be the reason to consider translating the app into the language of the country where the app is most successful.
Here are 7 eye-opening statistics why this could be a changing point for your app.
•
 
70+
 languages are supported by Twitter and Facebook
•
 
90%
 of customers
 CHOOSE their native language
 when it’s made available
•
 
78%
 of customers are 
more likely to BUY 
if
 user instructions are in their language
•
 
81%
 of customers are more
 likely to BUY
 if
 technical documentation is in their language
•
 
60%
 of customers 
in Japan and France will not buy from an app in another language
(Sources: The Economist Intelligence Unit, Common Sense Advisory)
Below, you will find some guidelines to consider when writing the messages to the users that will help sending a direct and clear message as well as avoiding embarrassing translation mistakes.
Correct Content
Run the message through a 
check spelling
 software i.e. MS Word, or even browser for that matter.
Use 
Commas
 to separate subordinate clause at the beginning of the sentence and elements in a list:
[](http://2.bp.blogspot.com/-jstls_v4urQ/U7xB69roQJI/AAAAAAAAAYQ/B25vzkPslKw/s1600/Screen+Shot+2014-07-08+at+2.08.55+PM.png)
[](http://3.bp.blogspot.com/-Bj69zK8_0QI/U7xEGPNOjqI/AAAAAAAAAYc/cEiHylMeYeU/s1600/Fast_Animals__Slow_Children_7_by_fa_sc.jpg)
Could be rewritten to "
Slow, children."
or even better,
 "Slow-down, children." 
Add hyphens
 - when you use the appropriate prefixes, to avoid double vowels, to avoid tripple consonants, for clarity, with certain compound phrases
Use that for restrictive clauses, use which for for non-restrictive clauses
Clear content
Use short sentences with just one topic
Bad:
 "This is a list of the current status of all event monitors for this process"
Better:
 "This lists the current status of all event monitors for this process."
Use simple tenses
What does "studying plans could be useful" mean?
Plans that discuss studying could be useful.
Studying the plans could be useful.
Use active voice, avoid passive voice
Include all the articles and all other necessary parts of speech
What does "Print control file list" mean?
Print all the files that contain controls.
A list of files that contain print controls.
Print a list of control files.
Print the controls and file the list.
Control the print and list the files.
Print and control a list of files.
Repeat nouns and repeat modifiers, do not use ambiguous pronouns
Bad:
 
 The developers agreed to discuss the issue, but it took too long.
Better:
 The developers agreed to discuss the issue, but the discussion took too much time.
Omit any unnecessary words
Wordy:
 
         In the event that
More Concise:
 
 If
Do not use 
"and/or"
Example: When you say Close and/or lock the door, the translators have to choose among the following possible phrases:
Close and lock the door.
Close or lock the door.
Close or lock the door, or close and lock the door.
Avoid idioms and jargon
Bad:
 in the ballpark
Better:
 estimate
Consitent Content
Use US Standard English
Use only one unvaried term for any given concept
when asking the user to press on something all the following words mean the same:
Depress
Enter
Hit
Press
Strike
Tap
Type
For delete:
Clear
Delete
Discard
Erase
Purge
Keep the use of numbers and digits consistent
Use Family Name and Given Name instead of First and Last Name
How to proper format your strings
Place all your Strings into a separate resource XML file
 - the strings include titles, names, error messages and any other text the user might see.
DO NOT concatenate strings,
 it almost always results into a localization bug. i.e. red pencil will be translated to crayon rouge in french
Set up the rules for ellipsize
 - As a rule ellipsize at the end for 1 word button texts and in the middle for 2 word. If the translation is long, then the user might never see the second word if you cut the strings at the end.
Allow for string expansion
 
[](http://3.bp.blogspot.com/-JfG_q-PkrQ4/U7w1gkalGkI/AAAAAAAAAXg/IY0OZJa_2dY/s1600/Screen+Shot+2014-07-08+at+1.12.51+PM.png)
Test the strings at early stages, google translate and other services will give you an idea of the length of the strings.
Possible solutions are to either leave room between the text and the field or place the label above the field.
[](http://3.bp.blogspot.com/-7IUBA7JnGVA/U7w7fVMcWVI/AAAAAAAAAXw/X9OdksKfZYE/s1600/Screen+Shot+2014-07-08+at+1.21.17+PM.png)
[](http://4.bp.blogspot.com/-_FsUYKzSXI0/U7w7pd28-bI/AAAAAAAAAX4/6p6n9DiZLAo/s1600/Screen+Shot+2014-07-08+at+1.21.23+PM.png)
In the table below are the IBM recommendations for planning for UI text expansion:
http://www-01.ibm.com/software/globalization/guidelines/guideb.html
[](http://3.bp.blogspot.com/-JhXHimBKeks/U7w78q81vxI/AAAAAAAAAYA/2d6RyG08VdU/s1600/Screen+Shot+2014-07-08+at+1.27.30+PM.png)
Never put hard enters in the code.
Avoid text in icons and other image assets

