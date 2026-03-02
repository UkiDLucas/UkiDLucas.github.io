#byUkiDLucas #Blogger #public
#tag/ai

title: Detecting exercise type and repetitions using mobile phone gyroscope
published: 2016-06-05
source: https://ukidlucas.blogspot.com/2016/06/gyroscope.html
local_images:
- _blogger_images/Detecting_exercise_type_and_repetitions_using_mobile_phone_gyroscope/Screen_Shot_2016-06-05_at_12.49.25_PM.png
- _blogger_images/Detecting_exercise_type_and_repetitions_using_mobile_phone_gyroscope/Screen_Shot_2016-06-05_at_12.49.25_PM_2.png

Today, I have been experimenting to see if I can detect the EXERCISE pattern and number of REPETITIONS using Android gyroscope:

Exercise:

leaning forward - literally bowing forward, 3 repetitions, phone centered on sternum, upright.

You can see by:

- X axis (blue) I am clearly doing 3 exercises

- Y axis (green) is not changing, I am not leaning to the side

- Z axis (yellow) is not changing, I am not moving up or down

- Acceleration (orange) I was going faster at first and then slowing down

It it THAT SIMPLE!

Now, I just need to ROUND OFF the numbers to DISCRETE VALUES and DIVIDE the exercise by the reps :)
