---
layout: paper
title: "Design and User Experience"
date: 2016-06-02
last_updated: 2026-11-13
author: Uki D. Lucas
permalink: "/posts/design-and-user-experience/"
overview: "Development for mobile is a wonderful opportunity for beautiful and functional design that complements the device's technical abilities and screen properties. Most people underestimate the amount of work that goes into graphical design and its implementation."
---

Development for mobile is a wonderful opportunity for beautiful and functional design that complements the device's technical abilities and screen properties.

Most people underestimate the amount of work that goes into graphical design and its implementation.

Just as food for thought, the display is one of the most expensive parts of a mobile device today. Did I spend several hundred dollars extra for the highest quality large screen to view your app stretched up from a poor-resolution, tiny screen?

I don't want to reiterate the existing and very good documentation available for both Apple iOS and Android devices, but included are a few tips that may not be voiced on the official websites.

## UX and UI standards

### Style guide naming conventions

As soon as the first "visual assets" are created, it is essential that the Style Guide Naming Conventions are created.

It is very important that the whole team understands what we mean when we talk about "HEADER" and "PARAGRAPH". The team should have a dictionary of a couple dozen or so style name conventions that are clearly defined and consistently used.

### A note about fonts

It is important that Android, iOS, etc. developers have common naming standards, even if one platform's "PARAGRAPH" font is "Roboto" and the other's is "San Francisco".

Keep in mind that particular style details will differ depending on the device size (iPhone 5, 6, 6+, Android medium DPI, extra high DPI, etc.), as well as on the user's preferred language selection (e.g. English vs German). The PARAGRAPH font may have 15 different sizes across different devices.

The San Francisco font has 2 families, each having 6 variants, and it is different on iPhone and Apple Watch. It really takes some training to choose it correctly. If the UI designer is not aware of this, the developers may or may not choose the best option.

### Color palette for app flavors

The color palette should be well named. Apps rarely use more than a dozen colors; in fact, they should not use more, or the app becomes a carnival eyesore.

In most cases the names should NOT suggest the color, especially if you are creating flavors of the app in different color schemes.

### More about naming

The names should NOT imply the implementation details of the object, nor its location. For example, LOGIN_BUTTON_BLUE violates both of the rules.

The names should always be GENERIC_TO_SPECIFIC.

Examples of acceptable style names:

```
COLOR_PRIMARY
COLOR_SECONDARY
COLOR_BACKGROUND
COLOR_HYPERLINK
COLOR_CALL_TO_ACTION
COLOR_INACTIVE
COLOR_TEXT
BUTTON_DIALOG_POSITIVE
BUTTON_DIALOG_NEGATIVE
```

### Style centralization and hierarchy

The base styles should be implemented in a central location for each platform, so changes to the whole application can be made instantly.

The styles can be "inherited" when it makes sense, so the desired font family (e.g. "Roboto") is mentioned only once in the code. The font variants and sizes should be indicated once per device size (e.g. Apple Watch, iPhone 5, 6, 6+, tablet sizes, etc.).

It is essential to maintain a strict hierarchy with minimum duplication of code.

## Common design deliverables

There should be clear expectations about the type and timing of deliverables.

Typical materials to be delivered before work begins include:

- marketing standards that define acceptable usage of logos, fonts, colors, etc.
- style naming standards
- style guide per platform (Android, iOS, etc.)
- style considerations for different screen sizes, fonts, margins, stretching, etc.
- special needs considerations for color blindness and the need for increased font sizes
- UX wireframe flow of the application (using Balsamique, etc.)
- UI mocks for the widget library (pickers, headers, pop-ups, buttons)
- UI mockups per feature (actually does not have to be pixel perfect)
- UI graphical asset delivery per platform (e.g. done via a Git-enabled tool like SparkleShare)

## Assets to match the screen

Web developers have one screen density (traditionally 72 DPI), and that is all. The assets can be cut ("Photo-chopped") or drawn as vector graphics. In adaptive Web design you can use different size images depending on the screen size. It is relatively simple.

Mobile devices have different screen sizes and different pixel densities, ranging from 72 DPI to a high 400 DPI. An image on a high DPI screen could be 6 times smaller than intended when a 72 DPI image is simply copied to the newest phone.

Mobile developers can use vector graphics to draw most (material style) widgets, and even use vector graphics for iconography. Android has the ability to use 9patch stretchable images as well.

However, the images that do not stretch have to be provided in a variety of sizes, usually at least three. It is especially important that icons are nice and crisp on every major device size.

Stretching the images is a very bad idea that ends up in a poor quality product.

## Apple is not Android

Many companies say, incorrectly: "We want a consistent look across all platforms." This is usually a bad approach. All platforms have their own ways of doing things and navigating, and users are used to certain interactions.

Blackberry cannot support the richness of iPhone, and iPhone does not support features of Android. Some devices are too small to support side-by-side fragments. Some devices have physical menu buttons that should be supported. Some phones do not support Touch ID or NFC. Some platforms use and expect desktop widgets.

Users of each platform are used to a different type of experience, and forcing them otherwise makes for unhappy customers. Each platform should be considered a different media channel, with its own rules to follow.

## Who is responsible for providing creative assets?

The designers should be able to provide the implementation of their art, which might include the following assets: HTML & CSS, mobile layouts, stretchable (9patch) images, etc.

The designer should be an integral part of the development team. Teams where there is a lot of "throwing over the fence" are usually dysfunctional, and the end product suffers.

I am not a big fan of one-off design orders over the Internet. You get the asset, but really you need a family of assets following a theme. You need assets that thinly integrate with the layouts.

If the designer provides only wireframes and Photoshop images, that may work, but expect a lot of back and forth and frustration, sometimes even a major redo.

It is sometimes worthwhile to hire a design firm to provide an initial idea and creative direction, but each product development team will need an artist sitting together with the developers and working together. If the company considers the mobile product a long term strategy, then the artists should become the core part of the team.

The designer should also be able to run emulators for all platforms and major screen sizes, and know how to scale them, to be able to predict the final user experience.

## Pixel density

When thinking about pixel density (DPI), imagine a balloon.

Think about a balloon that you blow to 50% capacity (phone size), and draw a 1 inch square on it. Then blow it to 70% capacity (7 inch tablet). At this point your original square is much bigger.

Draw another 1 inch square. You use much less of the balloon rubber to do that (fewer pixels).

Blow up the balloon to 100% of its holding capacity (tablet). The original square got much bigger and fuzzy.

You do not want to use the graphics from a small phone on large devices.

## Fonts

You should not use more than 6 fonts (family, size, color combinations):

- H1
- H2
- Paragraph
- Hyperlink
- Subscript
- Inactive

Text sizes should be set using SP units on Android and EM on the Web. They are fairly consistent between different devices (scale-independent) and take into consideration user settings.

## Being lazy on tablets

It is a cardinal sin, and most of us are guilty of it, to make your phone apps stretch on tablets!

There is nothing more upsetting to people spending obscene amounts of money (up to $1,400) on their Pro line of tablets than to see a fuzzy phone app with a paragraph font size equivalent to 64 px.

Web mobile app developers should at least allow full website access if they do not design the touch interface in full HD.

## Case study

A while ago I compared Gmail applications between 4, 7, and 10 inch screens.

The 10 inch app was done in a nice 2 column layout with small fonts, which made it easy to view my email content.

The 7 inch tablet app was nothing but a blown-up small phone app, with huge fonts, as if Google was assuming all Galaxy Tab 7 users were vision impaired.

The small screen app wasted a lot of screen with big buttons in editing mode, buttons that should have been in a menu with better iconography.

Even the Blogger app I am using now has several buttons that take up screen space. I assume that the Blogger app is used very frequently, so it should be designed for frequent users.

Since then, Google has improved their UX dramatically.
