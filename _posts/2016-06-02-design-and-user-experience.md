---
layout: single
title: "Design and User Experience"
date: 2016-06-02
author: Uki D. Lucas
permalink: "/posts/design-and-user-experience/"
---

#byUkiDLucas #public #UX

# Design and User Experience

Design and User Experience
Development for mobile is a wonderful opportunity for beautiful and functional design that complements device’s technical abilities and screen properties. Most people underestimate the amount of work that goes into graphical design and its implementation. 
Just as a food for thought, display is one of the most expensive parts of the mobile device today, did I spend extra several hundred dollars for the highest quality large screen to view your app stretched up from the poor-resolution, tiny screen?
I don’t want to re-iterate the existing and very good documentation available for both Apple iOS and Android devices, but included are few tips that may not be voiced in official websites.
UX and UI standards
Style Guide Naming Conventions
As soon as the first "visual assets" are created it is essential that the Style Guide Naming Conventions are created. It is very important that the whole team understands what we mean when we talk about "HEADER" and "PARAGRAPH". The team should have a dictionary of about couple dozen, or so style name conventions that are clearly defined and consistently used.
A note about fonts
It is important that Android, iOS, etc. developers have common naming standards even if one platform's "PARAGRAPH" font is "Roboto" and the other's is "San Francisco".
Keep in mind that particular style details will differ depending of the device size (iPhone 5, 6, 6+, Android medium DPI, extra high DPI, etc.) as well on the user's preferred language selection (i.e. English vs German). The PARAGRAPH font may may have 15 different sizes across different devices. San Francisco font has 2 families, each having 6 variants and it is different on iPhone and Apple Watch. It really takes some training to choose it correctly. If the UI designer is not aware of this the developers may, or may not choose the best option.
Color Palette for app flavors
The color palette should be well named, the apps rarely use more than a dozen colors, in fact they should not use more as the app becomes a carnival eye-sore. In most cases the names should NOT suggest the color, especially is you are creating flavors of the app in different color schemes.
More about naming
The names should NOT imply the implementation details of the object, nor their location, for example LOGIN_BUTTON_BLUE violates both of the rules.
The names should be always GENERIC_TO_SPECIFIC
Examples of acceptable style names:
COLOR_PRIMARY
COLOR_SECONDARY
COLOR_BACKGROUND
COLOR_HYPERLINK
COLOR_CALL_TO_ACTION
COLOR_INACTIVE
COLOR_TEXT
BUTTON_DIALOG_POSITIVE
BUTTON_DIALOG_NEGATIVE
Style centralization and hierarchy
The base styles should be implemented in a central location for each platform, so the changes to whole applications can be made instantly. 
The styles can be "inherited" when it makes sense, so the desired font family is (i.e. "Roboto")  is mentioned only once in the code. The font variants and sizes should be indicated once per device size (i.e. Apple Watch, iPhone 5,6,6+, tablet sizes, etc). It is essential to maintain strict hierarchy with minimum duplication of code.
Common Design Deliverables
There should be clear expectations about type and timing of deliverables.
Typical materials to be delivered before work begins include:
marketing standards that define acceptable usage of logos, fonts, colors, etc.
style naming standards 
style guide per platform (Android, iOS, etc)
style considerations for different screen sizes, fonts, margins, stretching, etc.
special needs considerations for color blind and need of increased font sizes
UX wireframe flow of the application (using Balsamique, etc.)
UI mocks for the widget library (pickers, headers, pop-ups, buttons)
UI mockups per feature (actually does not have to be pixel perfect)
UI graphical asset delivery per platform (e.g. done via GIT enabled tool like SparkleShare)
Assets to match the screen
Web developers have one screen density (traditionally 72 DPI), that is all, the assets can be cut ("Photo-chopped"), or drawn as vector graphics. In adaptive Web design you can use different size images depending on the screen size. It is relatively simple.
Mobile devices have different screen sizes and different pixel density ranging from 72 DPI to high 400 DPI. Image on high DPI screen coupled be 6 times smaller then intended when 72 DPI image is simply copied to newest phone. 
Mobile developers can use vector graphics to draw most (material style) widgets, even use vector graphics for iconography. Android have ability to use 9patch stretchable images as well. 
However for the images that do not stretch they have to be provided in variety of sizes, usually at least three. It is especially important that icons as nice and crisp on every major device size.
Stretching of the images is a very bad idea that ends up in a poor quality product.
Apple is not Android
Many companies say incorrectly: “We want a consistent look across all platforms” which usually is a bad approach. All platforms have their own ways of doing things, navigating and users are used to certain interaction.
Blackberry cannot support the richness of iPhone and iPhone does not support features of Android. Some devices are too small to support side-by-side fragments. Some devices have physical menu buttons that should be supported. Some phones do not support Touch ID, or NFC. Some platforms use and expect desktop widgets.
Users of each platform are used to different type of experience, forcing them otherwise makes for unhappy customers. Each platform should be considered a different media channel with its own rules to follow.
Who is responsible for providing creative assets?
The designers should be able provide the implementation of their art which might include the following assets: HTML & CSS, mobile layouts, stretchable (9patch) images, etc. 
Designer should be an integral part of the development team, the teams where there is much of "throwing over the fence" are usually dysfunctional and the end product suffers. I am not a big fan of one-off design orders over the Internet. You get the asset, but really you need a family off assets following a theme. You need assets that thinly integrate with the layouts.
If the designer provide only wireframes and Photoshop images that may work, but expect a lot of back and forth and frustration, sometimes even a major re-doing.
It is sometimes worthwhile to hire a design firm to provide an initial idea and creative direction, but each product development team will need an artist sitting together with developers and working together. If the company considers the mobile product as a long term strategy then the artists should become the core part of the team.
The designer should also be able to run emulators for all platforms and major screen sizes and know how to scale them to be able to predict the final user experience.
Pixel Density
When thinking about pixel density (DPI) imagine a balloon.
Think about a balloon that you blow to 50% capacity (phone size) and draw 1 inch square on it, than blow it to 70% capacity (7 inch tablet), at this point your original square is much bigger. Draw another 1 inch square, you use much less of balloon rubber to do that (less pixels). Blow up the balloon to 100% of the holding capacity (tablet), the original square got much bigger and fuzzy. 
You do not want to use the phone graphics from small phone on large devices.
Fonts
You should not use more than 6 fonts: family, size, color combinations:
H1
H2
Paragraph
Hyperlink
Subscript
Inactive
Text sizes should be set using SP units on Android, EM on the Web. They are fairly consistent
between different devices (scale-independent) and take in consideration
user settings.
Being lazy on tablets
It is a cardinal sin, and most of us are guilty of it, to make your phone apps stretch on tablets! 
There is nothing more upsetting to people spending obscene amounts of money (up to $1,400) for their Pro line of tablets and see fuzzy phone app with paragraph font size equivalent to 64 px.
Web mobile app developers should at least allow full Website access if they do not design the touch  interface in full HD.
 Case study
A while ago I compared Gmail applications between 4, 7, and 10 inch screens. The 10 inch was done in nice 2 column layout with small fonts which made easy to view my email content. The 7 inch tablet app was nothing, but blown up small phone app, with huge fonts as if Google was assuming all Galaxy Tab 7 users were vision impaired. The small screen app has wasted a lot of screen with big buttons in editing mode, buttons that should have been in menu with better iconography. Even the Blogger app I am using now has several buttons that take screen space. I assume that Blogger app is used very frequently, so it should be designed for frequent users.
Since then Google has improved their UX dramatically.

