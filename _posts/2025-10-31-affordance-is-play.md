---
layout: paper
title: "Affordance is Play"
date: 2025-10-31
author: Uki D. Lucas
permalink: "/posts/affordance-is-play/"
---

Affordance as a Function of Intent and Action?

As a person passionate about Behavioral Sciences, I found myself unable to shake the impression that the paper “A Theory of Affordances in Reinforcement Learning” somewhat artificially imposes a mathematical frame on the idea. The authors, following Gibson in 1977, define “affordance” as a relationship between intent and action success within a Markov Decision Process (MDP).

In their formulation, an affordance is something that fulfills an intended goal with a certain probability.

The paper remains valid but inspires us to think more deeply about the meaning of affordance, especially in the context of Machine Learning.

Markov Decision Process (MDP) is a loop:

-
You (or agent) in some situation (personal and world state).

-
You (or agent) choose an action.

-
The world reacts (new state + reward).

-
Wash and repeat.

MDP fits neatly into the machinery of reinforcement learning, where an agent seeks to maximize rewards by executing optimal actions.

Gibson (1977) defined affordances as different possibilities of action that the environment affords to an agent.

I do not have an issue with Gibson's ecological definition.

Affordance is Play

To me, affordance has less to do with intent and everything to do with play.

In the real world, we discover affordances not by planning but by playing with possibilities.

A child learns what can be done by climbing, falling, touching, and testing the boundaries of safety. The best moments of childhood play are those when we barely escaped unscathed; when the heart raced, when something almost went wrong, but didn’t. That boundary between freedom and danger is where learning is deepest.

Affordance, in this sense, is not about achieving an outcome. It is about staying alive while experimenting with the world.

It defines the space within which we can change the game's parameters without getting hurt.

In reinforcement learning (RL) terms, it is the manifold of safe exploration, or the zone where feedback is rich but failure is not fatal.

source: Atlantic

Simulation and Safe Play

This form of learning is ancient. We simulate dangerous situations in imagination, running them over and over in the mind’s eye. Or we externalize them through ritualized, controlled play, just like in karate kata, where potentially lethal movements are practiced in a form that is safe and repeatable. Then there is karate kumite, or sparring, where we step closer to real risk but still within agreed limits. Both are forms of play. Both train us to recognize the edges of danger without crossing them.

It is the Most Serious Matter

Play, then, is not the opposite of seriousness; it is the method by which organisms map the terrain of survival. Through play, we learn about the world’s resistance and our own capabilities. The outcome of play is not a single intent achieved, but a widening of understanding; an embodied sense of what is possible.

The Definition

If I were to define affordance, I would not say it is “the subset of state–action pairs that fulfill intent.” I would say:

Affordance is the set of game parameters within which an agent can safely play and explore the outcomes that bring meaningful experiences.

It is the field of viable transformation, the space where curiosity meets consequence and both survive the encounter.

Mathematics

For those people who do not consider writing worth reading unless it contains at least 20% of LaTeX.

Let’s assume hazard H is a function that indicates how risky it is to take a particular action a in a given state s.

$$
H(s,a) \le h_{max}
$$

If the hazard is below some acceptable threshold \( h_{max} \),
then this action is considered safe enough to play with.
In everyday terms: “Don’t jump higher than you can land safely.”

Now we introduce a second measure, feedback richness F.
It describes how much change or learning happens when you take an action a.
We can compute it by looking at the expected difference between the current state s
and the next state s' after performing action a.

$$
F(s,a) = \mathrm{E}_{s' \sim P(\cdot \mid s,a)} \left[ D(s,s') \right]
$$

where:

Symbol

Meaning

\( s \)

The current state of the agent.

\( a \)

The action taken in that state.

\( s' \)

Read “s-prime” — the next state that results after performing the action.

\( P(s' \mid s,a) \)

The transition probability: how likely it is to reach each possible next state \( s' \) when taking action \( a \) in state \( s \).

\( D(s,s') \)

A difference function measuring how much the world or the agent’s perception changes between \( s \) and \( s' \); it could represent distance, novelty, or information gain.

\( \mathbb{E}_{s' \sim P(s' \mid s,a)}[\cdot] \)

The expected value — the average of that difference over all possible next states following from \( s,a \).

The formula asks: “On average, how different is the world after I act?”

If nothing changes (like bouncing on a log that won’t move), feedback is low. If something new happens (the world reacts in an interesting way), feedback is high.

So \( F \) measures how informative or “fun” the action is: how much it teaches the agent about the world.

The affordance of play is the set of all state–action pairs that are both safe and interesting:

$$
A_{play} = \{ (s,a) \in S \times A \mid H(s,a) \le h_{max},\ F(s,a) \ge f_{min} \}
$$

In plain language:
An action is “playable” if it won’t hurt you and it’s worth doing because you might learn something new.
It defines the zone of viable exploration; the sweet spot between boredom and danger.

Next, we define the play policy: the way an agent chooses its actions to keep playing safely and learning effectively.

$$
\pi_{play}^{*} =
\arg\max_{\pi}
E\!\left[
\sum_{t=0}^{T} \gamma^{t} F(s_t,a_t)
\right]
\quad \text{s.t.} \quad
H(s_t,a_t) \le h_{max},\ \forall t
$$

where:

Symbol

Meaning

\( \pi \)

A policy — a rule or function that tells the agent which action to take in each state.

\( \pi_{\text{play}}^{*} \)

The best (optimal) play policy that satisfies the safety rule.

\( \arg\max_{\pi} \)

Find the policy that gives the maximum possible value.

\( \mathbb{E}[\cdot] \)

The expected value, i.e., the average over all possible outcomes.

\( \sum_{t=0}^{T} \)

A sum over time steps from the beginning (\(t=0\)) until some horizon \(T\).

\( \gamma^{t} \)

A discount factor (0 < \( \gamma \) < 1) that slightly reduces the importance of far-future experiences; it models our natural tendency to value the present more than the distant future.

\( F(s_t,a_t) \)

Feedback richness — how much the agent learns from taking action \(a_t\) in state \(s_t\).

\( H(s_t,a_t) \)

Hazard — the expected risk or potential harm of taking that action.

\( h_{\max} \)

The maximum acceptable hazard, the safety limit.

\( H(s_t,a_t) \le h_{\max} \)

The safety constraint: every action must remain below the danger threshold.

This formula means the agent tries to maximize total feedback over time (it wants the richest learning experience possible)
while keeping every action within the safety boundary.

In other words: “Explore as much as you can without getting hurt.”

The factor \( \gamma \) (gamma) discounts future feedback slightly,
just as we naturally prefer immediate experiences to distant ones.

For comparison, the classical reinforcement learning policy focuses purely on reward:

$$
\pi^{*} =
\arg\max_{\pi}
E\!\left[
\sum_{t=0}^{\infty} \gamma^{t} r(s_t,a_t)
\right]
$$

Traditional Reinforcement Learning (RL) agents chase rewards \( r \).

A playful agent instead chases understanding \( F \), which signals curiosity, while respecting a safety boundary \( H \).

It is not optimizing for success but for continued participation.

Application for Machine Learning

In practical machine learning, this perspective turns into a guide for building better agents.
Instead of rewarding an agent only when it achieves a fixed goal, we can encourage it to
discover where it can play safely. The agent learns the boundaries of its world and the regions that
respond richly to its actions, rather than blindly optimizing for external rewards.

In reinforcement learning terms, the agent can maintain two learned functions:
a hazard model \( H(s,a) \) estimating the probability of failure or damage,
and a feedback model \( F(s,a) \) estimating the expected amount of new information
or improvement gained from an action.
By combining them, the agent can create its own playground of exploration \( A_{play} \)
and focus on safe and informative actions.

Such agents do not merely chase rewards; they evolve through curiosity.

They learn the structure of their environment by interacting with it, not just memorizing outcomes.
This approach aligns machine learning more closely with how humans and animals learn: through playful experimentation, through testing what can be changed without harm.
It is learning as a continuous dance with uncertainty; an art of
exploring the edge of safety where discovery happens.

References

-
“A Theory of Affordances in Reinforcement Learning”, Khimya Khetarpal et al.

https://arxiv.org/pdf/2006.15085
