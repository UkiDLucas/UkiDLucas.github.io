---
layout: single
title: "Joint Embedding Predictive Architecture JEPA"
---
#public #blogger #_3d_perception #affordance #ai #jepa #ml #robotics #yann_lecun
blogger_updated: Sun, 11 Jan 2026 06:30:00 +0000

Published: Sun, 11 Jan 2026 06:30:00 +0000

## Overview

Recently, I came across a paper on the "Joint Embedding Predictive Architecture" (JEPA), co-authored by Yann LeCun, which may change how we think about robotic perception.

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEizMaJuO58kql763eONcSbfL89QJfjRMpQKC8lrOR7LI4HNnZyagrd-SrtOHElOhCMabVh4MbTflaiQbJrUPmLu7vWWZ4Rgs1jasJGhudVaqYvRPVMexGh3ZTGMHv1lXfzfoAhapjtwwiT6DfSWAhKYtkPti_yWBd0QiNhO4qwBPkvXpKrpq-3Tm78E7x8/w640-h165/Screenshot%202026-02-02%20at%2010.32.46%E2%80%AFAM.png)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEizMaJuO58kql763eONcSbfL89QJfjRMpQKC8lrOR7LI4HNnZyagrd-SrtOHElOhCMabVh4MbTflaiQbJrUPmLu7vWWZ4Rgs1jasJGhudVaqYvRPVMexGh3ZTGMHv1lXfzfoAhapjtwwiT6DfSWAhKYtkPti_yWBd0QiNhO4qwBPkvXpKrpq-3Tm78E7x8/s2814/Screenshot%202026-02-02%20at%2010.32.46%E2%80%AFAM.png)

  

JEPA (Joint Embedding Predictive Architecture) is a method for training machines to understand the world by learning what can be **predicted** rather than what can be **named**. The goal is not to describe what is seen, but to grasp the **meaning of a situation** well enough to anticipate **what will happen next**.

At its core, JEPA trains a system to understand the world's **affordances**: what is stable, what can change, and which actions lead to which outcomes. It does this **without** putting that understanding into any **particular language or visual image**. Instead, the system learns an internal sense of “what makes sense” by being asked to infer missing pieces of its experience from what remains visible.

This approach is especially natural for **3D perception**. Geometry carries constraints that appearance alone cannot provide. Surfaces support or block motion, empty space allows motion, and spatial relationships persist even when parts of the scene are occluded. By learning to predict what must be present but is not directly observed, the system internalizes these constraints as part of its understanding.

The representations learned in this way are not optimized for classification or reconstruction. They are optimized for **coherence, or meaning over time**. They capture the structure of the environment in a form that remains meaningful as the viewpoint changes or as actions unfold.

This makes JEPA a foundation for **robotics**. It provides a way to build perception grounded in the **physical world**, in which meaning emerges from what can happen rather than from how things are labeled. Subsequent chapters will build on this idea, one concept at a time.

  
  

## The Real World

We all experience the world before we can describe it.   
Long before **words** or **drawings**, there is **experience**. The body moves, the environment responds, and patterns slowly become familiar.  
  
A hand presses against a table and feels resistance. An object released from the hand falls. A path allows movement; a wall does not. These are not lessons delivered through instruction. They are discovered through contact, repeated until they no longer surprise. Understanding begins as a sense of what tends to happen.  
  
There is no clear boundary between perception and action. To function at all, a learning system must stay oriented within this flow, forming expectations that are stable enough to guide the next move.  
  
Not every detail can be predicted. Surfaces vary. Shadows change. Yet most of this variation can be ignored. What matters are constraints that hold. Objects occupy space. Support prevents falling. Push transfers force. These regularities persist even as appearances change.  
  
From these regularities, intuition forms. A **cup is understood** not as an image but as something that can be **grasped**, **filled**, **tilted**, or **dropped**. The meaning lies in what can be done and what will follow. These are **affordances**. They are learned through action, not description.  
  
This kind of understanding is wordless and implicit.  It manifests as confidence in movement and restraint, with fewer surprises over time. Prediction improves, and with it, the ability to act without hesitation.  
  
Only later do we begin to **name what we already know**. Words arrive as **mental shortcuts**. They point to patterns that existed long before they were labeled. Language facilitates communication, but it rests on a foundation that would exist without it.  
  
The real world teaches first by enforcing consequences. It **rewards****correct predictions and corrects** incorrect ones. From this process, a stable internal sense of space, time, and possibility emerges. That sense precedes abstraction and underpins it.  
  

### Text Is Not Enough

Language appears to be intelligent because it is visible. We can read, hear, and test it. When a system produces fluent text, it conveys an understanding. But language is not where understanding begins. It is where it ends up after something quieter and more physical has already occurred.

Text is a record of experience, not the experience itself. It assumes a shared world. When we say that a cup fell, we do not explain gravity, support, or collision. We assume them. A reader already knows what falling means because they have lived in a world where objects drop when released. Language works by leaning on that prior knowledge, not by creating it.

This is the limit of language-only systems. They learn correlations between symbols that already compress the world. They never see the constraints that produced those symbols. They do not feel resistance, continuity, or consequence. As a result, they can describe situations fluently while lacking an internal sense of what can actually happen next.

Real understanding is predictive. It is the ability to anticipate outcomes without narrating them. When you reach for a door handle, you already know how it will turn. When you step onto a surface, you trust it will support your weight. This knowledge is not verbal. It is a lived model of the world, shaped by repeated exposure to structure and constraint.

To move beyond language, we must return to those foundations. Systems must learn from signals that carry the world’s structure directly: space, motion, geometry, and time. They must form internal representations that stay coherent as viewpoints change and actions unfold. The goal is not to predict words or images, but to predict what remains stable and what can change.

This is the shift ahead. From describing the world to modeling it. From naming outcomes to anticipating them. Language will remain useful, but it will sit on top of something deeper: an internal sense of how the world works, learned from the world itself.
