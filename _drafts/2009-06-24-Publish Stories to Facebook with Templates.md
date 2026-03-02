---
layout: single
title: "Publish Stories to Facebook with Templates"
---
 #byUkiDLucas #public
 
 
# Publish Stories to Facebook with Templates

When using Facebook Connect or any other Facebook app to post stories to users’ walls and news feeds, Facebook provides a way to customize exactly what information will appear and how. This mechanism is called Template Bundles. This article demonstrates how to create a template step by step.  In a 
[second article](http://ukitech.blogspot.com/2009/06/integrate-your-gwt-app-with-facebook-in.html)
, I explore one technology for actually posting stories with this template—
[GWT](http://code.google.com/webtoolkit/)
 and the 
[facebook4gwt](http://code.google.com/p/facebook4gwt/)
 library.
 
Sign in to Facebook using your standard credentials. Navigate to 
[http://www.facebook.com/developers/](http://www.facebook.com/developers/)
 and click your application on the right.
 
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNC2NVztfrusL-EGwrgnapjJLtc5j5_qBEbvFCUgZguqvVKrd3EvJwTPb_zOeR2jwqCDOTMOQa77l7SUcsaI5r3gJKPexU2DKUjNo2SOUxQEERLwzpLmHYdPSiUcW9-dRPC8BC/s1600-h/image44.png)

From the application, click “Create Feed Template”.
 
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjp2S69sHM2IKHvjbm8Qs-9v8XIZEoyzEURfiJdfDI3lZRStGsG4GPxmkLMO2QFntZKHqBDAWCZE5M7YTk-FzKmhOBJHNFybv7wUiPdaReRx7yBRV3-nhmT5o5COGKUi8T5Xtj8/s1600-h/image45.png)

This takes you to a utility for creating templates. Select your application in the dropdown and click “Next”.
 
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi6ss-R9ES6miEGKstDsnAF5FWJsGxL-Py2AF6hSV6n5zbnIVWdY62C-rx1U7fwd3UCX0q2VkCZ9E9Zt0gXjzAeMc1fWGZyQk_okuSwfK21Y1EFfUnzEzzzouMANzchkt1k3P59/s1600-h/image46.png)

Stories can be posted to Facebook in one of two forms, "One Line Story” and “Short Story”. Each template can specify both forms. First you will be prompted to specify the “One Line Story” form. Fill in the template as desired. A sample preview is shown on the right side of the page.
 
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhMU83XklGKal4lqRFsCnujXgB5XGqCQnF6Lil_BUZ2rWQdbznGcKdKE-oTlNOT9UyCbuKy1SYA4S-dBpvCr0_vEJlexEq5fbvE3Rjn_kdTFJpL3KwFkBk8UgRSaQj2khz3aE9I/s1600-h/image51.png)

Click “Next”. Now you are prompted to fill in the “Short Story” form. With both forms we specify tokens within the text that will be replaced with values specified when the story is posted. Tokens use the {*token*} syntax. There are some predefined tokens like {*actor*}, and you can also specify your own using any token text you like. Here I am using my own token {*headline*}.
 
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJ72CnH16DlhdE-Xw77MDTUVKTlzSWA_SvJPkp5GZOQw7pTCrt9bvOAluvn78ZnwQ3wf2SwpKb-HEQ455OnYJvG3LLYFRXN-AOAjw8CTBIKJZ7kw9SFS9GNUJk7myiu6sslhuG/s1600-h/image52.png)

Click “Next”. You can specify an optional link that appears with both template forms. Again, tokens are allowed. I am using another custom token, {*url*}.
 
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhJuZsAt2fh0ALMqjJOd7bej0r_Z-q1Im2vjuNYTZs1S3znMopeBXysCk6ggtPb8r-ztS5QJI2GZ61ghBkkTE7R0v0NRcsPqyrMTosNe01fn1sv5_9-pZveLEgnwT0LjCBNrs0G/s1600-h/image53.png)

NOTE: In order for the sample preview to show, Facebook requires that we specify data for all custom tokens in the “Sample Template Data” box. You can see that I added “headline” and “url” here. This does not affect our template at all, just the preview we see on this screen. 
 
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQLXXydSGaYZdh1c4tfCtRNDUwvmUJn3s5A0_r2skIiO6kC607_pAvWH8TLEQta8gq74rnVua1KHzIyPiSacATepilxb6oni-ayHQVuytaHFyT_BZOJy6e5mtNE8auPuAe4iOH/s1600-h/image54.png)

Click “Next”. A final preview is shown. If you’re happy with your template, click “Register Template Bundle”.
 
A confirmation popup appears with the ID number of the template. You will use this number to reference this template when making posts. Don’t worry about copying it down if you don’t need it immediately; you can always look it up later.

[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiX2j9_zhR1olb9B4tFIf-UtD8YcHeySDf_L7I8EZfoQbavjmSLYQ4IbQ9jCsqIY6MdC6hjs0kF5ZmB4qJG3g3eY8Vhj0K5bPMb9I2TCGo8h3wUc8tMH9FzAk02fWpO_q1FFz_8/s1600-h/image58.png)

That’s all there is to it. You can now use any of the Facebook APIs to post stories using your template. In 
[another article](http://ukitech.blogspot.com/2009/06/integrate-your-gwt-app-with-facebook-in.html)
 I explore an example of this with a 
[GWT](http://code.google.com/webtoolkit/)
 application, taking advantage of the open source 
[facebook4gwt](http://code.google.com/p/facebook4gwt/)
 library.
