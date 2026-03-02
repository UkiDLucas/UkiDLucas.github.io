---
layout: single
title: "Programming for UI Designers: Android Options Menu"
date: 2011-09-02
author: Uki D. Lucas
permalink: "/posts/programming-for-ui-designers-android-options-menu/"
---

# Programming for UI designers: Android Options Menu

Ins and outs of Android Options Menu
The standard Android Menu is one of the most common elements of an Android application, and provides users a familiar way to perform actions. It contains a collection of primary options and functionality which shows up when the user touches the MENU button on the device.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKSdeC7SPRoDxjEcQPx2qGvO8bUJZaggXR2DUJid3xc5Nukll1a4LXWGxWe1aOxDy22PfoOEtJl8Z6YhwjVjlUXiRMV5oxP_8WkTmjbig3qPLiDZf_6BFl4vLMGdCPJZhI4BLYfw/s1600/device-2011-09-02-102523.png)
In this article we will explore how to make this simple item of Android user experience perfect.
Step 1.  Create a menu icon
open Photoshop, create a file with canvas size 72x72 (
Notice:
 always start from the larger size)
create your shape using Pen tool (P), or if you have it ready in some vector format paste it as a shape into your document. For the sake of sharpness it is important to use the shape tool and to adjust it, by moving its nods so that the margins fit to the pixel grid.
scale it to 48x48 and center it. Keep this size for more square icons but make them a little bigger in case you have a custom shape icon so they will appear visually approximately the same size
apply the following layer styles
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg5838xeo0uB49AmL__N9xD-OTMr-tStjs1yZ29V0xJFXoMDJDMbuDuU_ZKZb8ydxZmU2d8GDCS1lVUgw0-t2NdVBC2vfraYD7T9zt1e5U6csXmvHFRWg1jL1yG7SAz2wpbknlxSg/s1600/style.png)
save it as *.png
scale and save the icon for  mdpi (48x38) and ldpi (36x36).
Note:
 The menu icons are not the case to improvise. The better we follow the guidelines the better and crisper they will look. I advise you to
[download the Icon Templates Pack](http://developer.android.com/shareables/icon_templates-v2.3.zip)
 - where you can find the PSD template for every screen size. Create your shape in Illustrator, paste it  in the PSD template, copy the layer styles from the template layer and paste it to yours. Voila, you got the icon.
Step 2.
Copy the icon to an existing project
Import (Checkout) an existing project in Eclipse IDE (see
[Software Installation and set up for Android Development](http://cyberwalkabout.blogspot.com/2011/09/understanding-programming-for-ui.html)
). If one is absent you might want to download an open source application.
In the project explorer take a look at the resources folder (/res/). Its content is of the most interest to us, designers.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1nZ7PzU4PYPHarZwVuRoCs5BHCWx4vcOUS3kGMeTAkpq_XbPUhV7kyAOobzCiwBCWexBB9ekTwIPaX001n1Rdi4i7JGMvfvZkyTZppgfagZW69zf_qFIxsNmh7GsdMCm6izXjpg/s1600/drawable.png)
Notice that we have a lot of drawable folders in which reside all our graphical assets as well as elements/shapes drawn in xml which we will explore another time.
When an application is downloaded on the device, the app performs a check of the screen size and density and runs using the graphics from the appropriate folder. If graphics for a given device is not found, or it deals with an element shared with all the screen sizes, then the app is looking for it in the default folder .../drawable/.
To import the icons in the project just drag and drop them in the specific folders.
Note:
 The icon should have exactly the same file name for all the screen densities. After importing you should get the following structure:
/drawable-hdpi/ic_help.png
/drawable-mdpi/ic_help.png
/drawable-ldpi/ic_help.png
For the menu icons we will not consider screen sizes, only screen densities.
Step 3. Menu layout
Unfold the ../res/menu and ... /res/values:
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmaiil3aibMrznK7qe1sgDz32UzN7FcwPKZnuX0MKtmcuwydRaJfvtI3tdHnCFvTts-UwwBzqqVjbvjTDrDEABSxVjWY7xs9-NSUqlMj0FHuVKL8nZa6z4gYGepgegTYkfjgX52A/s1600/values.png)
In the menu.xml and events.xml, if we read attentively, even without knowing any programming its clear that we have a <menu> which contains <items>.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhlx-YOnMK4Ids3gn66E_ipuWEb0dqFR-YGazeKDV5UgliUpbRChJPvkZG9SsOWkYKfNAvTB-6alFO8HnAPtfrF4sH8kUUOtVjxa1hSfH6d5RV9ttmgj7X6cVO_8kxCo8V_p34U4g/s1600/xml.png)
android:id="@+id/about_us"
 - is the name of the activity/functionality that will be started when we tap, until you do not get very comfortable with the programming part its better not to make changes here.
android:icon="@drawable/ic_help"
- notice that even if the icon is placed in different folders, we do refer to the "/drawable", this is why it is so important to keep the same filename for all the desnsities.
android:title="@string/home_about"
- in the image of the folders above, in the values folder there is a strings.xml file. This file stores all the strings (titles, notification messages, etc.) we might need including the title of the menu elements. Notice that in the <menu> we refer to string title and not to its content. Knowing this you can change the content or correct spelling yourself.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhTc2EV43FfgJTruBLsUUa0qWiwRe62JQQwSwmAp5RD7VFaM97A5DFeZqbsrrUB7oWWV1-7YRxImVetqb_0N_SafBlJfSNu6r_PoDld1xOVnqEnGiZWmpoNCnqF3MKd4vidS1NltQ/s1600/stringdsds.png)
Note:
 Having an existing project with at least one menu item you should be able to add as many of them as you need to test. Just make copies of the <item> inside the <menu> in the xml menu file, and make sure to copy and create strings for the item title as well. As for android:id, you can copy the same value in all of them as our goal is to test the look of the icons and we do not care about the activity that follows, just be careful not to commit your experiments. If you want to temporally remove an item from the menu you can comment it out by selecting it in xml file and pressing command+shift+C.
Step 5. Run and test the application
right click on the project and choose Refresh
connect the device to the computer or set up your emulator
right click on the project, select Run and choose as Android Project
Sucess!
