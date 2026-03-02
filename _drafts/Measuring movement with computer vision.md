#byUkiDLucas #Blogger #public
#tag/ai

title: Measuring movement with computer vision
published: 2026-02-08
source: https://ukidlucas.blogspot.com/2026/02/kata.html
local_images:
- _blogger_images/Measuring_movement_with_computer_vision/IMG_6137.jpeg
- _blogger_images/Measuring_movement_with_computer_vision/IMG_6137_2.jpeg

Today, I was measuring my movement using computer vision.

Because of my interests, the numbers show Karate kata, which I need to improve.

Technique

Speed (ms)

Performance Score (%)

Morote-uke Gedan-barai (migi)

410

68

Chudan-tsuki (migi)

330

76

Yoko-tsuki (migi)

290

82

Morote-uke Gedan-barai (hidari)

395

70

Chudan-tsuki (hidari)

320

78

Yoko-tsuki (hidari)

285

84

At a basic level, video is a time-stamped measurement tool. Every frame is a discrete snapshot of body position at a known interval. At 60 frames per second, each frame represents about 16.7 milliseconds. That is already within the range where clinically meaningful differences in reaction time, initiation latency, acceleration, and braking can be observed.

What this allows, even from a simple smartphone recording, is segmentation of movement into phases. We can identify true stillness, first detectable motion, peak velocity, end position, and recovery. By counting frames between these events, we can estimate timing for each phase with reasonable accuracy, typically within ±15–20 ms at 60 fps. This is sufficient to distinguish preparation from initiation, early acceleration from late acceleration, and controlled stopping from overshoot.

From a biomechanical perspective, the most valuable measurements are not raw speed, but timing relationships. For example, which segment initiates first, the pelvis, trunk, shoulder, or distal limb? Even without full 3D motion capture, relative timing can be inferred by observing when each segment begins to move from frame to frame. Small delays of 30–50 ms are visible and repeatable when the video is consistent.

Acceleration profiles can also be approximated. By tracking the displacement of a joint or endpoint frame by frame, we can derive velocity curves and infer acceleration patterns. While this is not laboratory-grade kinetics, it is enough to distinguish relaxed, late-accelerating motion from tense, early-loaded motion. This is a key in my Karate kata training. In practice, this distinction often correlates strongly with efficiency, injury risk, and motor control quality.

Another important capability is repeatability analysis. By comparing multiple executions of the same movement, video analysis can reveal whether a motor pattern is stable or variable. As motor control improves, trajectories become more consistent even as speed increases. This is something clinicians often feel intuitively when watching patients, but video allows it to be tracked objectively over time.

It is also possible to infer aspects of neuromuscular tension indirectly. Excessive co-contraction often manifests as hesitation before movement, uneven velocity curves, micro-stutters, or prolonged deceleration. Relaxed, efficient movement tends to look sudden, clean, and symmetrical. While video cannot directly measure muscle activation, these kinematic signatures are surprisingly reliable when compared across sessions.

There are, of course, limits. Video cannot directly measure force, joint moments, or muscle activation. Depth perception is limited without stereo or depth cameras. Absolute joint angles are less reliable than relative timing unless the camera setup is carefully controlled. But for timing, sequencing, coordination, and motor learning, standard video is far more powerful than most people assume.

In short, video analysis sits in a useful middle ground. It is not a replacement for EMG, force plates, or optical motion capture, but it is far more than subjective observation. When used consistently, it becomes a practical tool for studying motor control, rehabilitation progress, and skill refinement, especially when the goal is improving timing, coordination, and efficiency rather than raw strength.

If your interest comes from physiotherapy, this approach aligns well with modern motor learning principles. It supports external observation, objective feedback, and gradual refinement without overloading the patient or practitioner with complex instrumentation.

I hope this gives you a clear picture of what can be done, and why it is both technically sound and clinically relevant.

My next step is to convert it to true 3D perception.
