---
layout: single
title: "How to Prepare Design Assets (UI) for iPhone Development"
date: 2012-06-18
author: Uki D. Lucas
permalink: "/posts/prepare-design-assets-ui-for-iphone-development/"
---

 #byUkiDLucas #public
 
# How to prepare design assets (UI) for iPhone development

From our experience the ideal case scenario is when the developer and the UI/UX designer work hand in hand. Meanwhile since, many companies have their in-house design teams, and either want to save on design, or feel more comfortable working with their team, here are the requirements for the deliverables.
1. Press-able elements should have at least 2 states,
 regular and pressed, the 3rd optional is in focus, used mostly for the listings, or when an element has on/off state. For example in camera apps, flash on/flash off which is different than pressed state which user sees only for a millisecond, on actual press.
2. Name the files properly.
a. According to screen size: naming should be identical, for retina display @2x is added to the naming. Every single element needs to be prepared for both screen sizes:
btn_item@2x.png
btn_item.png
b. For every different state of the same element:
btn_item.png
btn_item_pressed.png
btn_item_on.png
btn_item_off.png
c. Add screen title to the file name, unless the asset is being reused throughout the application.
btn_homescreen_item.png
btn_settings_item.png
3. Always design for the bigger screen
The latest generations of the iPhone, comes with a 640x960 px, 326 dpi retina display. The previous generation has a screen of 320x480 px, 163 dpi, 
(notice exactly 50% smaller)
. So let's go through the process of preparing the Close button from this screen:
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi-MzMOFuaxNdc4Dtzd-lLhum6PJGLvnsLWjAe-NdQdR8kKm0u_IPK7muIB0aWmzdZCz1SOgPjqAcnZflcyAMiM2Dr15nPGcnFZcsyxgxcZZCLGVGU1Peveicv778q-SKAuz4gFEw/s1600/screen1.png)
a) Make sure to have both states, regular and pressed:
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjX-HuclroLaFHhA9me59X0DcGbpFsugF_BjH6zq-bi1ZYhyphenhyphenOerOVrAKco2YmC9A9mc_5kabSoW2gv0si7-89iPnKtKUNQJORRAWauLWoPWMBjxSvSHww_owq9SajAfpTXd1NCFag/s1600/screen2.png)
b) Select all the layers pertaining to the element you are saving, right click and Convert it to Smart Object.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi__KOeHcXt8eGVrTgf12Zpe3i3-sYT2hyqVOFqBp8PoIWoIJ421UCJnp0l-OSYPg3dbb5WXjueMccnLJthkoFd2Hi4smZ2DdeGyR9oPZIfnDEMzeQh-q_gbrW0ByA5qBSw4Q6g6A/s1600/screen3.png)
c) Right click on the new Smart Object and export it.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjz76lc0ifFmZra395efPK8TYIy1F5VlkMq5JfDcgDx_SocDO-fYWKaHBS-4nigaAM5FFKkTmKCJ65nXt7CyGR4erAAjbeRBbx1QlVZR88-HX_tgk8WPpStGRJABBycweHqhyyYrA/s1600/screen4.png)
d) Open the exported file, select the layer with the element you want to save. 
hide the layer effects in order to check the margins
use the Direct Selection Tool to select the shape points
move every side in any direction you consider appropriate, in my case I moved to the right the 4 points shown in pic. B below
compare the right margin on the pic. A and pic. B you should see the difference in crispness.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgGeltNx7nqEM9gSqjytb6Q3Z_ah86yKWQEmP8jeARNciEABySqRiEP2sNc6L71aBYBmn6s0UvyegyOBG1d7Thx6jqRfWRti1VOJtgWochm2g6lBr_4rvWxU3wvAZFDEYO5RlxTCg/s1600/screen7.png)
f) When you are happy with the margins, bring back the layer effects, go to File > Save for web & devices, in file format choose PNG-24, preserves transparency and is optimized hit save, choose your location and name properly, in our case btn_close@2x.png:
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjYC6R8IdoZK0FVfdIZBQrsVX9I2FSwdTdXhq8Tp0jtz7mFRxRoOu5f43RQpwNQhAxRXDUl-Ad1Fb-Jf-uYMqz4hYWt13Qrg1G8VfbPAq85xn9pZxu4whQiDMxGsskTuDJ0bCFvDQ/s1600/screen9.png)
g) now we need to save the same button for smaller screens, go to Image > Image Size, and choose resolution 163 instead of 326 press OK. Repeat steps d and f, skip the @2x suffix in the naming.
h) repeat steps d-g for the pressed state of the element if present.
Attention:
 All the files should be in the same folder. Avoid using text on the graphics, unless you have very good design reasons to do so (ex. impossible to replicate programmatically and important for the design style ). Do not use text on the reusable graphics on which the text copy may differ from screen to screen.
4. Prepare Guidelines 
for the developers with the instructions on file usage, fonts, colors, spacing.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjdd-Bg7zpW73MYLzCpwolzvnaT7AADLbn9lLIO0OtRTsqrF0UFZaGDbqJuUF_fRrFqAfLyu4znYeFvffIorOmnEFWqbJZ-94SI9EvmatkBS1h9a-VH19g0KuoROWD2zRsh-wHhEw/s1600/guidelines_for_mobile_assets.png)
Attention:
 If you provide general guidelines throughout the app, like text colors, general use of text, you do not have to be this detailed as i n the example above on every screen. Guidelines should be provided for every screen of the app. If you decide to skip this step, you cannot expect an exact implementation of your designs.
5. Zip the assets
 folder together with the guidelines in pdf format, the layered psd file of the screen with appropriate naming (optional), append the date(MMDDYY) to the archive filename, and send.
6. Be consistent in file naming. 
If there are changes to the UI, name the files exactly as the once to be replaced. Add the new date to the zip and send.

