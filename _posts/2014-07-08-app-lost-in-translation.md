---
slug: app-lost-in-translation
published: 2014-07-08
last_updated: 2026-11-13
layout: paper
title: "App: Lost in Translation"
date: 2014-07-08
author: Uki D. Lucas
overview: "Every app team writes placeholder text that it promises to fix later, and often never does. That text becomes a real problem when the app succeeds in another country and needs translation. I gather guidelines for user messages that are correct, clear and consistent: short sentences, active voice, one term for each concept, no and/or, no idioms. Then I cover how to handle strings in code, why you should never concatenate them, and how to leave room on the screen for longer translations."
permalink: "/posts/app-lost-in-translation/"
redirect_from:
  - /Android/app-lost-in-translation/
---

From time to time, each of us working in app development, be that a UI/UX designer, developer or project manager, has to come up with user messages on the spot.

We all think: "Oh, this is a temporary text, a placeholder, we will fix it later." Question: how many times does this never happen?

You would be surprised to know that this happens a lot, from major international product development and brands that we all look up to, to the small side projects we do for fun.

At CyberWalkAbout, having a portfolio of over a dozen apps, some of the small "just for fun" projects surprise us by being more successful than some of those which required a big effort and were expected to become a hit. App analytics then help take those apps to the next level of success.

One of the big things to pay attention to is the usage statistics per country or language. They might be the reason to consider translating the app into the language of the country where the app is most successful.

## Why translate

Here are 7 eye-opening statistics on why this could be a turning point for your app.

- 70+ languages are supported by Twitter and Facebook
- 90% of customers CHOOSE their native language when it's made available
- 78% of customers are more likely to BUY if user instructions are in their language
- 81% of customers are more likely to BUY if technical documentation is in their language
- 60% of customers in Japan and France will not buy from an app in another language

(Sources: The Economist Intelligence Unit, Common Sense Advisory)

Below, you will find some guidelines to consider when writing messages to the users. They will help you send a direct and clear message, as well as avoid embarrassing translation mistakes.

## Correct content

Run the message through spell-checking software, e.g. MS Word, or even a browser for that matter.

Use commas to separate a subordinate clause at the beginning of the sentence, and elements in a list:

![](http://2.bp.blogspot.com/-jstls_v4urQ/U7xB69roQJI/AAAAAAAAAYQ/B25vzkPslKw/s1600/Screen+Shot+2014-07-08+at+2.08.55+PM.png)

![](http://3.bp.blogspot.com/-Bj69zK8_0QI/U7xEGPNOjqI/AAAAAAAAAYc/cEiHylMeYeU/s1600/Fast_Animals__Slow_Children_7_by_fa_sc.jpg)

This could be rewritten to "Slow, children." or even better, "Slow-down, children."

Add hyphens when you use the appropriate prefixes, to avoid double vowels, to avoid triple consonants, for clarity, and with certain compound phrases.

Use "that" for restrictive clauses; use "which" for non-restrictive clauses.

## Clear content

Use short sentences with just one topic.

Bad: "This is a list of the current status of all event monitors for this process"

Better: "This lists the current status of all event monitors for this process."

Use simple tenses. What does "studying plans could be useful" mean?

- Plans that discuss studying could be useful.
- Studying the plans could be useful.

Use active voice; avoid passive voice.

Include all the articles and all other necessary parts of speech. What does "Print control file list" mean?

- Print all the files that contain controls.
- A list of files that contain print controls.
- Print a list of control files.
- Print the controls and file the list.
- Control the print and list the files.
- Print and control a list of files.

Repeat nouns and repeat modifiers; do not use ambiguous pronouns.

Bad: The developers agreed to discuss the issue, but it took too long.

Better: The developers agreed to discuss the issue, but the discussion took too much time.

Omit any unnecessary words.

Wordy: In the event that

More concise: If

Do not use "and/or". For example, when you say "Close and/or lock the door", the translators have to choose among the following possible phrases:

- Close and lock the door.
- Close or lock the door.
- Close or lock the door, or close and lock the door.

Avoid idioms and jargon.

Bad: in the ballpark

Better: estimate

## Consistent content

Use US Standard English.

Use only one unvaried term for any given concept. When asking the user to press on something, all the following words mean the same:

- Depress
- Enter
- Hit
- Press
- Strike
- Tap
- Type

For delete:

- Clear
- Delete
- Discard
- Erase
- Purge

Keep the use of numbers and digits consistent.

Use Family Name and Given Name instead of First and Last Name.

## How to properly format your strings

Place all your strings into a separate resource XML file. The strings include titles, names, error messages and any other text the user might see.

DO NOT concatenate strings. It almost always results in a localization bug, e.g. red pencil will be translated to crayon rouge in French.

Set up the rules for ellipsizing. As a rule, ellipsize at the end for 1-word button texts and in the middle for 2 words. If the translation is long, the user might never see the second word if you cut the strings at the end.

## Allow for string expansion

![](http://3.bp.blogspot.com/-JfG_q-PkrQ4/U7w1gkalGkI/AAAAAAAAAXg/IY0OZJa_2dY/s1600/Screen+Shot+2014-07-08+at+1.12.51+PM.png)

Test the strings at early stages; Google Translate and other services will give you an idea of the length of the strings.

Possible solutions are to either leave room between the text and the field, or place the label above the field.

![](http://3.bp.blogspot.com/-7IUBA7JnGVA/U7w7fVMcWVI/AAAAAAAAAXw/X9OdksKfZYE/s1600/Screen+Shot+2014-07-08+at+1.21.17+PM.png)

![](http://4.bp.blogspot.com/-_FsUYKzSXI0/U7w7pd28-bI/AAAAAAAAAX4/6p6n9DiZLAo/s1600/Screen+Shot+2014-07-08+at+1.21.23+PM.png)

In the table below are the IBM recommendations for planning for UI text expansion:

http://www-01.ibm.com/software/globalization/guidelines/guideb.html

![](http://3.bp.blogspot.com/-JhXHimBKeks/U7w78q81vxI/AAAAAAAAAYA/2d6RyG08VdU/s1600/Screen+Shot+2014-07-08+at+1.27.30+PM.png)

Never put hard enters in the code.

Avoid text in icons and other image assets.
