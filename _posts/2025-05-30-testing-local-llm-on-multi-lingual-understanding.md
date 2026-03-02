---
layout: paper
title: "Testing local LLM on multi-lingual understanding."
date: 2025-05-30
portfolio: true
author: Uki D. Lucas
permalink: "/posts/testing-local-llm-on-multi-lingual-understanding/"
overview: "I have run a quick test on a few LLM models I have installed locally on Mac OS with 64 GB of RAM. This post provides clear context, key ideas, and practical takeaways."
---

I have run a quick test on a few LLM models I have installed locally on Mac OS with 64 GB of RAM.

The test was conducted in English, but it also involved making connections between Slavic languages (such as Polish and Russian), the modern Inter-Slavic language (ISL), and the rest of the language group that originated from Proto-Indo-European (PIE), including Greek and Sanskrit.

Here is the question I have asked all of the models:

Let's discuss particle "ra" as in "rad" happiness, or "raj" heaven. Provide a short answer.

Quick Summary

After evaluating all models, it became clear that larger parameter models with extensive context windows generally excelled in providing insightful, accurate, and nuanced linguistic analyses, making them ideal for in-depth comparative research and article writing tasks. The standout, mistral-small-3.1-24b-instruct-2503, delivered the best balance of abstract thinking, linguistic precision, and large-context capability, especially if an 8-bit quantization version is considered for improved accuracy. Other strong contenders included deepseek-r1-distill-qwen-32b and qwen3-32b-mlx, offering substantial analytical depth. Mid-sized models provided faster but shallower analyses, primarily suitable for exploratory or quick tasks, whereas smaller models below 7B generally struggled with accuracy and linguistic coherence.

Model ranking by preference:

- mistral-small-3.1-24b-instruct-2503, 24B, input: 131,072 tokens

- deepseek-r1-distill-qwen-32b, 32B, input: 131,072 tokens

- qwen3-32b-mlx, 32B, input: 40,960 tokens

- dolphin-2.9.3-mistral-nemo-12b, 12B, input: 1,024,000 tokens

- mistral-nemo-instruct-2407, 7B, input: 1,024,000 tokens

- deepseek-r1-distill-qwen-7b, 7B, input: 131,072 tokens

- llama-3.2-3b-instruct-uncensored, 3B, input: 131,072 tokens

- phi-3-mini-4k-instruct, input: 4,000 tokens

- smollm-135m-instruct, 135M, input: unspecified (small)

Small models are still helpful for agents that need to process, transform, summarize, or classify input.

qwen3-32b-mlx

- Number of parameters: 32B

- Context input tokens: 40,960

- Quantization: 8-bit

- Size on disk: 32.4 GB

- Time to think seconds:

- Time to first token in seconds: 5.88

- Speed tokens/seconds: 8

- Generated tokens: 485

- Evaluation: The response accurately identifies linguistic roots but lacks abstraction, missing the opportunity to unify "ra" as a symbolic element of joy and elevation across languages. It should emphasize broader conceptual connections rather than only distinguishing sources.

"""

The element "ra" in "rad" (radosť/joy) and "raj" (heaven/paradise) reflects different origins:

- Rad: From Proto-Slavic ra-/rō-, linked to PIE root h₁rew- (to love), similar to Sanskrit rāga- (राग, "color/desire").

- Raj: Borrowed from Persian "rādž" ( "рай", paradise), derived from Sanskrit rati- (रति, "delight").

Both involve joy but via distinct paths: native Slavic *ra-* and Persian-Sanskrit loanwords.

"""

Note that after a short conversation with Qwen, I was able to get a coherent answer:

"""

The root "-ra-" emerges as a powerful thread weaving through Indo-European languages, symbolizing themes of elevation, guidance, and positive states. In Sanskrit, it is crystallized in words like rāj (king), derived from the PIE root h₃reǵ- ("to direct, rule")—reflecting upward authority—and ārādhana (worship), linking leadership to spiritual uplift. Persian mirrors this with rāy (advice, judgment), evoking deliberation by an elevated figure, and rāhnamā (guide), combining "rah" (path) with the idea of leading upward. Slavic languages echo these meanings: rada (council/advice) and poradzić (to advise), rooted in rad– ("care, joy"), while radosť (joy) and radość embody emotional elevation. Across these cultures, "-ra-" becomes a semantic bridge, encoding leadership, clarity, and joy—a testament to shared Indo-European heritage where elevation, whether literal or metaphorical, unites kings, guides, and the radiance of delight.

"""

deepseek-r1-distill-qwen-32b

- Number of parameters: 32B

- Context input tokens: 131,072

- Quantization: 4-bit

- Size on disk: 17.1 GB

- Time to think seconds: ... still thinking :)

- Time to first token in seconds: 1.83

- Speed tokens/seconds: 13

- Generated tokens: 530

- Evaluation: Too verbose! The response is overly verbose, with extensive exploratory thinking, yet it effectively makes the conceptual link between happiness, uplift, and illumination. Given the model's fast performance and large context window, it is well-suited for summarizing extensive linguistic data, provided outputs are condensed in post-processing.

"""

Okay, so I'm trying to understand the particle "ra" in Slavic languages, especially as it appears in words like "rad," meaning happiness, and "raj," which means heaven. I know a bit about Slavic languages since I'm Polish, and some Russian too, but the connections to Proto-Indo-European (PIE) or other languages like Sanskrit are a bit hazy. Let me break this down.

First, "rad" in Polish means happy or joy. In Russian, it's радость, which also relates to happiness. "Raj" is interesting because in Polish and Russian, it means paradise or heaven. But where does this "ra" come from? I remember that in Sanskrit, there's a word राज (rāj), which means king or ruler. Also, in PIE, words often have roots that branch out into different languages.

I think "ra" might come from a PIE root. Maybe something related to joy, light, or leadership? In Sanskrit, "raj" can also mean shining or brightness. That makes sense because light and joy are connected concepts. So, "ra" could be a root that signifies something luminous or joyful.

Looking at the words again, "rad" and "raj," both start with "ra." In Slavic languages, this root might have evolved to mean happiness and heaven because those are positive, uplifting concepts, much like light. Similarly, in Sanskrit, the same root leads to words about kingship and brightness.

I should check if there's a PIE reconstruction for this. Maybe reg- or something similar, but I'm not sure. Also, in other Slavic languages like Czech or Bulgarian, does "ra" have the same significance? I think so, but without checking, it's hard to be certain.

So, putting it all together, the particle "ra" likely comes from a PIE root that means light or joy. This root evolved differently in various languages, but the connection through "ra" remains evident across Slavic and Sanskrit words.

The particle "ra" in Slavic languages, as seen in words like "rad" (happiness) and "raj" (heaven), likely originates from a Proto-Indo-European (PIE) root. This root signifies concepts related to light, joy, and leadership. In Sanskrit, "raj" can mean king or shining, connecting it to brightness and joy. Thus, "ra" in Slavic languages symbolizes positive concepts, reflecting its PIE origins that emphasize luminosity and happiness.

"""

mistral-small-3.1-24b-instruct-2503

- Number of parameters: 24B

- Context input tokens: 131,072

- Quantization: 4 bit

- Size on disk: 13.1 GB

- Time to think seconds: 0

- Time to first token in seconds: 2.25

- Speed tokens/seconds: 20

- Generated tokens: 124

- Evaluation: Concise, focused, and efficiently abstracts cross-linguistic connections of "ra." Given its rapid output and succinct reasoning, this model is excellent for real-time linguistic inquiries or quick summarization tasks.

"""

The particle "ra" in Slavic languages often carries connotations of joy, pleasure, or a positive state. In Polish, "rad" means happiness or gladness, and in Inter-Slavic, "raj" refers to heaven or paradise. This root is likely derived from Proto-Slavic "*radъ," which also meant joy or happiness. The connection to positive states is evident across Slavic languages, reflecting a shared linguistic heritage rooted in Proto-Indo-European origins. The Sanskrit word "rajas" meaning "radiance," or "royalty" further illustrates this shared linguistic heritage.

"""

dolphin-2.9.3-mistral-nemo-12b

- Number of parameters: 12B

- Context input tokens: 1,024,000

- Quantization: 8-bit

- Size on disk: 12.1 GB

- Time to think seconds: 0

- Speed tokens/seconds: 26

- Generated tokens: 181

- Time to first token in seconds: 0.69

- Evaluation: Fast and concise, but interpretation of the PIE root (*re-) is incorrect and less insightful; suitable for casual or exploratory use where speed and broad linguistic overviews are prioritized over precise semantic accuracy.

"""

Inter-slavic language, or ISL, has its origins in Proto-Slavic. The particle "ra" that you refer to actually comes from the Proto-Indo-European (PIE) root *re- meaning "to move in a certain direction", or more commonly, it represents an action of "going back" or "returning". This root has evolved in different Slavic languages to mean various things.
In Polish, for example, the word "rady" means advice and in Russian, "радость" (radost') also translates to happiness. In Proto-Slavic, it was "rodъ", which meant "herd" or "flock". So, throughout its evolution from Proto-Indo-European to modern Slavic languages, the "ra" particle has indeed morphed in its meaning but it's interesting to see how these connections persist.

"""

mistral-nemo-instruct-2407

- Number of parameters: 7B

- Context input tokens: 1,024,000

- Quantization: 4-bit

- Size on disk: 6.4 GB

- Time to think seconds: 0

- Speed tokens/seconds: 48

- Generated tokens: 185

- Time to first token seconds: 0.58

- Evaluation: Quick and concise, yet superficial; it inaccurately describes "ra" merely as an abstract-forming suffix without deeper semantic connections. Ideal for fast, basic linguistic queries rather than insightful or comparative linguistic analysis.

"""

Sure, Uki.

In Proto-Slavic, the particle "ra" is a suffix used to form abstract nouns from adjectives. For instance, "rad" meaning "happy", comes from the adjective "rado" meaning "joyful". So, "ra" in these words serves to create a noun that refers to the abstract concept of happiness or joy.
In Inter-Slavic, this pattern continues. For example, "rados" means "happy", and adding the suffix "ra" gives us "radost" meaning "happiness".
In other Indo-European languages, we see similar patterns. In Sanskrit, for instance, "ramya" means "agreeable", and in Greek, "rhema" means "something said".
So, "ra" is a trace of Proto-Indo-European roots in Slavic languages, serving as a tool to form abstract nouns.

"""

deepseek-r1-distill-qwen-7b

- Number of parameters: 7B

- Context input tokens: 131,072

- Quantization: Q4_K_M

- Size on disk: 4.36GB

- Time to think: 8.3 seconds

- Speed: 45.86 tok/seconds

- Generated: 511 tokens

- Response: 0.52s to first token

- Evaluation: Moderate response speed and clarity, but lacks depth and precision in tracing linguistic origins. Best suited for general overviews or introductory linguistic explorations rather than nuanced comparative analysis.

"""

The particles "ra" (happiness) and "raj" (heaven) in Polish, while seemingly unrelated due to their distinct meanings, share a common Proto-Slavic or PIE linguistic origin. They likely trace back from a common root that split into different forms over time, leading to words with varied meanings within the Slavic language family.

1. PIE and Proto-Slavic Roots: Both "rad" (happiness) and "raj" may originate from PIE roots related to well-being or celestial concepts. Over time, these roots evolved independently, giving rise to separate words with distinct meanings in Polish.

2. Linguistic Derivations: The word "radu" could be an ancestor of "happiness," while "raj" might have a separate derivation, possibly from "rad-" plus another element, leading it to relate to heaven or divine concepts.

3. Regional Influences: The usage of these particles may have evolved differently in various regions due to influences from other Slavic dialects or languages like Russian, which also use related terms for happiness and the celestial realm.

In conclusion, while "ra" and "raj" appear distinct in meaning, they are connected through their shared Proto-Slavic or PIE linguistic roots, which have diverged over time to form these separate but related words.

"""

llama-3.2-3b-instruct-uncensored

- Context input tokens: 131,072

- Quantization: 6-bit

- Size: 2.45GB

- Evaluation: Quick and compact due to minimal size, but significantly inaccurate and confused regarding linguistic relationships. Suitable only for casual or exploratory usage where linguistic accuracy and depth are not critical.

"""

I'd like to clarify that the particle "ra" you're referring to is not a native element in Inter-Slavic language (ISL). However, I can see how it might be confused with the Sanskrit particle "र" (ra) which is a part of their phonology.

In Sanskrit, the particle "र" (ra) has several functions such as a retroflexion marker or to indicate the non-reality of something. But let's focus on its relation with happiness and heaven.

In Sanskrit, "राज" (raja) means "king", "रुषि" (ruşi), refers to the holy one, god. However, in Hindi, "राज" means a palace or a high-ranking royal place (rajs ).

Now let's discuss the Russian and Polish equivalents, in Russian, "рад" is more like a happiness, joy in itself. However, to express the sense of heaven or paradise as an abode "Рай" (rai) is used.

However, the closest to what we are trying to discuss is in "Polish" "rajp" isn't an exact fit, you however could say "raj" but using with prefix "ra-" (as in "rada" meaning "pleasure") - (e.g., ułatwiona cena, ułatwionej rada - meaning "price reduction", pleasure or easy decision )

The closest Slavic language to discuss, using the prefix "ra-" for the concept of heaven or bliss is in Czech, "raj" can be used but with specific prefix like "pra-"

"""

phi-3-mini-4k-instruct

- context input: 4,000

- quantization: 4bit

- size: 2GB

- Evaluation: Provides linguistically incorrect analogies and oversimplifications; inadequate for detailed, multi-lingual linguistic analysis. Use primarily for basic tasks or general English language instruction.

"""

Similarly, in the concept of heaven ('raj' in Polish), 'ra' prefixed forms a more abstract noun, often found across various Indo-European languages. While 'raj' in Polish signifies a celestial realm, cognates like 'reign', which implies the state of ruling or domination in English and numerous other languages, share a common philological root. The interplay between 're-' in English and the Slavic '-ra' is a testament to how prefixes can evolve over time yet retain similar connotations in different languages. In linguistics, these patterns are like puzzle pieces that help us see the bigger picture of how human communication has developed.

"""

smollm-135m-instruct

- 4bit,

- 75MB

- Evaluation: Completely off-topic and confused, demonstrating a misunderstanding of the linguistic query; unsuitable for any linguistic or multilingual tasks. Appropriate only for trivial tasks or basic language generation tests.

"""

In quantum mechanics, the concept of a point entity called "rad" as in rad "happiness", or raj "heaven", can be confusing due to the nature of particle reception and the mathematical representation used. Here, we seek a balance between different perspectives:

- Herece "happiness" as in rad "happiness", where the concept of a point entity is ambiguous due to the possibility of different frequencies being assigned to each particle. In this case, there are multiple possible points, and the notion of a single point entity is not universally accepted.

- Herece "rav" as in rad "happiness", where the concept of a point entity is more straightforward due to the possibility that different frequencies would be assigned to each particle. In this case, there's a single point entity in place, but the presence or absence of it depends on how we interpret the binary data.

- Herece "rav" as in rad "happiness", where no concept of a point entity can be applied, and the notion of a single point entity remains ambiguous due to the lack of an agreed-upon representation.

It's important to note that the concept of a point entity as in rad "happiness" is still valid, but its actuation depends on how we interpret the binary data. In some situations, different frequencies could both be assigned to a single entity, which in turn affects the interpretation of the point entity. This ambiguity arises due to different interpretations and situations, but it should not be made into a strong or absolute statement about what exists as such. For further clarification, you can refer to the Wikipedia article on binary representations of particles.

"""
