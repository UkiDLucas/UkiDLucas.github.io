---
title: 'Artificial Intelligence for Robotics - Udacity CS373'
date: 2020-02-27
permalink: /Udacity CS373/
excerpt: 'This document consists of notes taken while taking a free, publicly available course "Artificial Intelligence for Robotics" [CS373](https://classroom.udacity.com/courses/cs373/) with Udacity. All included materials are publicly available from Udacity.'
tags:
  - Udacity
  - Python
  - robotics
author:
  - Uki D. Lucas

---



# Artificial Intelligence for Robotics - Udacity CS373



## Introduction

Introduction by Sebastian

https://www.youtube.com/watch?v=Uqt_pRbR8rI

Thousands of students have joined Udacity's Self-Driving Car Nanodegree Programs. Many of them now work as self-driving car engineers building autonomous vehicles! **Including the author, Uki!**

Intro by [David Silver](https://www.linkedin.com/in/dsilver829/)

https://www.youtube.com/watch?v=3GMltxuO6ls

Click here to enroll:

- [Self-Driving Car Engineer Nanodegree Program](https://www.udacity.com/course/self-driving-car-engineer-nanodegree--nd013)
- [Intro to Self-Driving Car Nanodegree Program](https://www.udacity.com/course/intro-to-self-driving-cars--nd113)



## Localization

https://www.youtube.com/watch?v=31xZhj2uPr4

GPS is not accurate, but we need localization acurancy at about 2cm.

## Total Probability

 https://www.youtube.com/watch?v=n1EacrqyCs8 

**Posterior** (after measurment) belief (probablility) bayesian distribution.

**Convolution** - moving of the belief, the level of belief is lower (amplitude is flatter)

https://www.youtube.com/watch?v=6tV5NY1HoNA

```python
#  Modify your code to create probability vectors, p, of arbitrary 
#  size, n. Use n=5 to verify that your new solution matches 
#  the previous one.

p=[]
n=5

for i in range(n):
    p.append(1./n)

print p

[0.2, 0.2, 0.2, 0.2, 0.2]
```



## Normalize Distribution

https://www.youtube.com/watch?v=Uc_rHR6U70U

![1](/Users/uki/REPOS/UkiDLucas.github.io/_posts/2020-02-26-CS373-AI-Robotics/1.png)

Normalize by probabilities so the sum = 1.

https://www.youtube.com/watch?v=SW_wvez0izo 

