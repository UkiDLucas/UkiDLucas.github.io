---
layout: single
title: "AIKO, the Tiny Language Model (TLM)"
---
#public_uki 
#byUkiDLucas #public #AIKO #book  
  
  

# AIKO, the Tiny Language Model (TLM)

  

## Introduction: A Language Model of My Own

We are surrounded by large language models: systems trained on the vastness of the internet. Models like GPT, Claude, and LLaMA can write essays, answer science questions, explain math, generate stories, and even simulate personalities.  
But as I’ve written in my blog, I’m not chasing scale. I like to experiment with small language models (SLM)—or, in this case, tiny language models (TLM). Partly because I’m burning midnight oil alone and not a green pile of venture capital money. Training even a mediocre LLM can cost tens of millions of dollars. More importantly, I wanted something that runs locally, privately, and fast. A model that lives on my laptop, not in a server farm.  
Yes, I know how to fine-tune Mistral 7B and use RAG and CAG. I’ll explain later why I trained a model from scratch instead.  
I also wanted something more playful: an AI Zen Garden where I cultivate a Collegium of AI personalities. Each is trained to reflect a slice of my inner world with their philosophies, moods, and voices.  
TLM is the first of these. She does not know all the facts ever written about the world. Instead, she is trained to understand how I see the world—to help me think, reflect, and write in my own voice. She speaks from my blog posts and personal notes collected over the decades. She is not artificial in the corporate sense. She is authentic, with her Japanese spunk and thoughtful presence.  
This book tells the whole story: how I came up with the idea, how I built it, why a small model can still be wise, and how you might make one, too.

  

### Why is 2,000 words-size vocabulary just enough?

When people think of artificial intelligence or language models, they often assume more is always better: more data, training, and vocabulary. Today’s large language models (LLMs) like GPT or Claude have vocabulary sizes ranging from 32,000 to 100,000 tokens. These are not just words. They include fragments of words, punctuation, and special characters, all designed to give the model fine-grained control over language.  
But what happens when you go in the opposite direction?  
For TLM, I did not need my model to speak every language or write every kind of document. I needed it to reflect how I write and think, not the language of scientific papers but the language of my blog posts, notes, and essays. This led me to ask how small the vocabulary can be while producing intelligent conversation.  
Anthropology offers a surprising starting point. In the study of contact languages, especially in historical trade zones, we find pidgin languages, which are improvised, simplified communication systems used between groups that do not share a common tongue. Many of these systems used just 600 to 800 core words, yet they were effective enough to conduct commerce, negotiate, and resolve conflicts. No grammar textbooks. No dictionaries. Just context, repetition, and the human drive to understand.  
The truth is that humans do not need a massive vocabulary to be profound. Most daily conversation among fluent speakers, even in highly educated circles, draws on a core of 2,000 to 3,000 high-frequency words. The long tail, with words like "effervescent," "equivocal," or "circumnavigate," shows up occasionally, but they are not required for clarity or insight. In fact, great thinkers and writers often use simple words to express complex ideas. Think of Hemingway. Think of Zen.  
  
So, I ran an experiment.  
  
I pulled all of my writing into one place: my Obsidian notes, blogs, essays, and even old emails. I stripped out formatting, cleaned the text, and ran a frequency analysis. I had over 1.5 million words and about 14,300 unique words. But when sorted by frequency, the pattern was clear. The top 2,000 words covered over 90 percent of the content. The remaining 12,000 plus words were edge cases: proper nouns, typos, one-off metaphors, or overly technical terms I rarely used more than once.  
  
So, I set the limit at 2,000.  
  
Then came the next step: Can we still write and ask intelligent questions using only these 2,000 words? The answer was a clear yes. I asked ChatGPT to rewrite several reflections and Q&A entries using only that core set. It was surprisingly liberating. Without rare or fancy words to hide behind, my ideas stood on their own.  
With a tiny vocabulary, your model becomes leaner, faster, and easier to train. The embedding matrix, the part of the model that turns tokens into vectors, becomes a fraction of the size. You can spend more compute on depth and attention and less on covering obscure corners of the English language you will never use. In other words, a tiny model with a well-selected vocabulary can outperform a larger one trained on random internet text.  
That is the philosophy behind TLM vocabulary. A model that knows less but understands what it needs to. It does not waste time guessing what "synecdoche" means in your journal. Instead, it focuses on what you meant by truth, love, work, or failure. It knows your voice and speaks it back to you.  
So yes, 2,000 words are enough if they are the right ones.  
  

### Why did I choose a 500-token context window?

  
When planning TLM, I assumed I would need a big context window. After all, many modern models offer windows of 8,000, 16,000, or even 100,000 tokens, and I was accustomed to feeding large documents into ChatGPT. These windows allow the model to look far back into a conversation or document, which seems necessary for long-form writing, code, or reasoning across multiple pages. Naturally, I wanted the same. I wanted my AI to remember every nuance of a note, to follow long trains of thought, and to draw connections from one idea to the next.  
But then I stopped and asked a more fundamental question. What was TLM really for?  
This model is not a "person" trained to maintain long conversations with strangers. It is not a summarizer of entire research papers. It is a focused model trained entirely to answer questions based on my writing. Its job is to give short, thoughtful responses to questions I would ask myself. It does not need to track through 20 pages of notes or documentation. It needs to understand a question and respond with clarity.  
That insight changed everything. I realized I could shrink the context window from 16,000 tokens to 500. At first, this felt like a limitation. Bseemedhe more I worked w, buthe idea, the more it made sense. A smaller context window makes the model architecture much more efficient. It reduces memory use, speeds up training, and simplifies attention calculations. Instead of building long-range transformers, I could focus on high-quality embeddings, clean attention maps, and tight feedback loops.  
Since the model is fully trained on the Q&A format, there is no need to dynamically read and process long contexts at inference time. Everything it needs to know is already embedded in the model weights. In that sense, TLM behaves less like a context-aware assistant and more like a small mind that remembers everything it was trained on and retrieves the right patterns when prompted.  
Shrinking the context window to 500 tokens made it possible to train on affordable hardware. With fewer tokens to process, I could use a smaller batch size, faster iterations, and run training sessions directly on my Mac, which made experimentation and debugging far easier.  
While large context windows are powerful, they are not always necessary. Combining a small vocabulary and a small context window led to a simpler, faster, and more focused model that answered my questions clearly without requiring me to scroll through a novel.  
Sometimes, building smaller is building smarter.  

### Why did I decide to train a model from scratch?

When I started working on TLM, I used an excellent open-source models like Mistral 7B. I knew how to fine-tune it using parameter-efficient techniques. I also had experience setting up retrieval-augmented generation (RAG) and context-augmented generation (CAG). These tools allow you to keep a large model frozen as a source of world knowledge and dynamically feed it extra information at inference time. From a practical standpoint, fine-tuning Mistral and using it with RAG or CAG would have been the quick and obvious solution.  
But that wasn’t enough. There is a unique joy in designing something from scratch. When you start from the ground up, you have full control. You understand every layer, assumption, and limitation. In the age of pre-trained everything, we often skip that creative process. I wanted to build a model of my own.  
Another reason was platform-specific: I work on macOS and wanted to train and run the model locally. That meant using MLX, Apple’s machine learning framework, built to run natively on Apple Silicon and explicitly designed for training and inference on the GPU cores in the M1 through M4 (2025) chips. MLX is low-level but powerful. It gives me direct control over tensors and layers, and it runs efficiently on my MacBook Pro. I also have a 32-core, 96GB RAM NVIDIA GPU workstation at home, but I prefer macOS over clunky Ubuntu-based Zorin.  
I wanted to use the model in LM Studio and accelerate it using Metal, Apple’s GPU framework. LM Studio is a local model interface for macOS that supports quantized models, chat templates, prompt formatting, and flexible context settings. It gives me a user-friendly front end to interact with TLM without spinning up custom scripts every time.  
Designing the model to train in MLX and run in LM Studio helped me stay focused. Every decision had to support both simplicity and compatibility. I could not rely on massive parameter counts or giant context windows. I had to create a model that could run fast, use a limited vocabulary, and still sound intelligent.  
My ideas about design, hardware, and personal computing shape the model, which is why I chose to build it from scratch.  
  
  

## What are word embeddings?

  
  
Before diving into TLM's architecture, we need to take a closer look at something essential but often overlooked: embeddings. Embeddings are the bridge between raw language and numerical computation. They are the first major step in how a language model begins to understand language.  
  
Let us break this down from the beginning. When you input text into a language model, it does not see whole words or letters. Instead, the text is first split into smaller parts called tokens. A token might be a whole word, like "apple," or a fragment of a word, like "ing" or "tion." Each token is then mapped to a unique number called a token ID. These token IDs are not yet meaningful—they are just integers, like 42 or 1029.  
  

### What is the optimal token bit size?

  
  
Because tokens are integers, it is worth considering how many bits we need to store them efficiently. If your vocabulary has 2,000 tokens, the highest token ID is 1,999. That means you can represent any token using just 11 bits, since 2¹¹ = 2,048. In theory, 11 bits would be ideal, but standard hardware and programming languages do not support 11-bit types. In practice, we typically store token IDs as 16-bit or for expensive models 32-bit integers. For TLM, even using uint16 is overkill—it allows up to 65,535 values when we only need 2,000. However, we use it because it is the smallest commonly supported data type that avoids compatibility issues. Understanding this helps when optimizing memory and ensuring efficient execution on platforms like Apple Metal and MLX, where vectorized operations and memory alignment favor power-of-two bit widths.  
  

### Should I use a larger vocabulary?

  
  
Given that we already use 16-bit integers to represent token IDs, it raises a natural question: should we expand the vocabulary to better use the available ID space? After all, 16 bits can represent up to 65,536 different values, while our model only uses 2,000.  
In theory, yes—we could expand the vocabulary. But in practice, there is no compelling reason to do so. Larger vocabularies require larger embedding tables, which increase memory usage and training complexity. More importantly, the goal of TLM is to model my personal voice and reasoning. My writing style and subject matter are already well-covered by the top 2,000 tokens extracted from my own texts. Adding more tokens to fill ID space does not enhance model performance. It may make the model more difficult to train, requiring more examples per token to converge.  
  
We stick with 2,000 tokens not because the hardware limits us but because it fits the model's intended purpose. A leaner vocabulary means a smaller, faster embedding table and a more efficient model overall.  
  
  

### What are my programming language choices?

  
  
While MLX is designed with Python as its main interface, the underlying operations are compiled and executed on Apple Silicon using Metal Performance Shaders. This backend allows MLX to fully utilize Apple's GPU acceleration on M1, M2, and newer chips. Currently, MLX is most naturally used with Python, and there is no first-class support for Swift or Objective-C at the time of writing. However, Apple’s growing machine learning ecosystem means future integration with Swift or Swift for TensorFlow-style workflows may eventually emerge.  
  
For now, using Python with MLX is the best and most stable option, especially for prototyping and training models like TLM. I chose Python not only because of its compatibility with MLX, but also because it is widely understood and easy to share. If I publish this book, I may open-source my Python-based training scripts so others can replicate or modify this approach for their own use.  
  
  

### What are embedding vectors?

  
  
Token IDs This is where embeddings come in. An embedding is a vector, which is just a long list of numbers, such as [0.12, -1.34, 2.01, ...]. These numbers represent the "meaning" of a token in a mathematical space. Words that are used in similar ways tend to have embeddings that are close together in this space. For example, the words "sun" and "moon" will have vectors that are close because they often appear in similar poetic or metaphorical contexts, yet they differ in meaningful ways—such as representing day and night, or masculine and feminine symbols in various cultural texts.  
  
  

### What is an embedding table?

  
  
All of these token vectors live inside something called the embedding table. This is essentially a big matrix with one row per token ID and one column per embedding dimension. For TLM, with a vocabulary size of 2,000 and an embedding size of 384, this table has 2,000 rows and 384 columns. Each token ID looks up its row to get its vector.  
  
  

### Why did I use a basic embedding method?

  
  
At this point, I had to make a decision: should I use a standard embedding layer, or design something custom? There are clever techniques used in some ultra-compact models, such as hash-based embeddings or compressed quantized matrices. But in my case, the full embedding table was already small—less than two megabytes in float16 precision. It was simpler, faster, and more compatible with MLX and LM Studio to use a standard, learnable embedding matrix.  
  
Standard embeddings are easy to understand, easy to train, and easy to export. I did not need a specialized method for saving a few kilobytes of memory. I wanted this project to be clear and replicable. That also means that if I publish this as a book, I may open-source my Python GitHub repository so that readers can review my implementation and train their own model using the same techniques.  
So I chose the standard approach: trainable, randomly initialized embedding vectors—one for each token in my vocabulary. These vectors are updated during training, just like any other part of the model.  
  

### Why Embeddings Work?

  
  
The model does not know what "apple" or "truth" means in English. It only knows their corresponding vectors and how they behave in relation to other vectors.  
The embedding vectors are not static; they are trained. This means the values inside them are adjusted during training based on how useful they are in helping the model make accurate predictions. In other words, the model learns the meaning of each token through repeated exposure to how it is used in context.  
Embeddings are also the reason why limiting the vocabulary to 2,000 tokens saves memory and speeds up training. A smaller vocabulary means a smaller embedding table. Since the embedding table is often one of the largest components in a model, shrinking it can significantly reduce the model's overall size.  
  
Finally, embeddings are not only used at the beginning. After the model processes text and generates new token predictions, those outputs must also be converted back into token probabilities. This step uses the same embedding matrix (or a similar one, depending on implementation) in reverse.  
  
Understanding embeddings is key to understanding how a model like TLM can operate efficiently and intelligently, even with limited resources. With that foundation in place, we can now move on to how the rest of the architecture is built. I also want to mention that I maintain a Python GitHub repository with code related to this project. If I publish this book, I may open access to the repository so readers can follow along, replicate the work, and even adapt it to their own writing.  
  
  

## Architecture

  
  
Now that I had chosen to build my model from scratch, I needed to define its architecture. This means designing how the model is structured and how it processes information. It is similar to designing a custom engine instead of buying one off the shelf. You have to decide how big the engine will be, what kind of fuel it runs on, and how fast or efficiently you want it to operate.  
  

### Input and Layers

  
  
Let us start with the basics. Before any of the deeper layers do their work, the model needs an input layer. This is where the raw data enters the model. In the case of a language model, that raw data is not plain text but tokenized text. Each word or word fragment is first converted into a token, which is simply an integer that represents that unit of language. These are not floating-point numbers or probabilities, but discrete integer IDs—essentially just index numbers in a vocabulary list. For example, the word "apple" might be token ID 582, and "walked" might be 1237. These integers are used to look up vectors in the embedding table. These numbers are then passed into an embedding layer, which translates each token into a vector—a list of numbers—that can be processed by the rest of the model. The embedding layer is essentially the model’s way of understanding what each token "means" in a mathematical sense. These vectors, often hundreds of dimensions long, form the actual input to the transformer layers that follow.  
  
A language model is made of layers. Each layer is like a processing unit that transforms and refines the information passing through it. Think of layers as filters or stages that add more understanding to the input. The more layers you have, the deeper the model’s ability to capture complex patterns. However, more layers also mean more memory and processing time.  
  
For TLM, I chose to use 12 transformer layers. This is enough to give the model the ability to recognize subtle patterns in my writing while still being small enough to train on my MacBook. Each of these layers contains two main parts: attention and feed-forward.  
  

### What is the attention layer?

  
  
Attention is a mechanism that lets the model focus on the most important parts of the input. Imagine reading a sentence like, "The cat that chased the mouse ran across the yard." When you hear "ran," you know it was the cat, not the mouse. Attention helps the model keep track of such relationships. In technical terms, it allows the model to weigh which words are most relevant to each other.  
  
The feed-forward part is a small neural network that takes the output from the attention mechanism and refines it further. It works the way our brain processes and adjusts our thinking after noticing something important.  
Each layer also uses normalization to keep the data stable and residual connections to make sure earlier information is not lost. This helps the model stay balanced and learn faster during training.  
  

### Hidden Dimensions

  
This is the width of the model, or how many numbers (called dimensions) it uses to represent each word. A typical large model might use 2,048 dimensions. That is a lot, and not necessary for a small, focused model like mine. I chose a hidden size of 384. This is a good trade-off between power and speed. But where does that number come from? In large models like GPT or BERT, hidden sizes often range from 768 to 2048 dimensions. These are large because those models are trained to represent all human language, across all topics, styles, and domains. But TLM is specialized—it only needs to learn the structure and meaning within my own writing.  
  
A smaller hidden size makes the model faster and easier to train. I could have chosen 128 or 256, but those sizes might be too small to capture the nuance in my writing. Going up to 512 or more would increase memory and training time significantly. So I landed on 384.  
  

#### Why is 384 a good number?

  
Because it divides evenly across attention heads—384 divided by 6 gives 64. This means each attention head gets 64 dimensions, which aligns with common practice in transformer design. Models like GPT and BERT also use 64-dimensional attention heads because it balances detail and efficiency. Choosing a hidden size that is cleanly divisible by the number of attention heads avoids extra computation and makes the tensor operations more efficient on Apple Silicon.  
  
It’s also hardware-friendly. Apple’s GPU architecture performs better with power-of-two sizes or multiples thereof. By using 384, I strike a balance: it is big enough to allow expressive representations of meaning, but small enough to stay fast and memory-efficient. This choice helps the model run well on my MacBook and keeps everything compatible with MLX and LM Studio workflows. It allows the model to be expressive enough while keeping the memory footprint low.  
  

### Vocabulary

  
  
This means the model only needs to learn to understand and work with 2,000 tokens. Fewer tokens means a smaller embedding table, which is the part of the model that turns each token into a vector (a list of numbers the model can understand). Smaller embedding tables are faster to train and use less memory.  
  

### Context Length

  
That is the maximum number of tokens the model can consider at once. Since I designed the model for short, focused Q&A, this is enough.  
  
I also had to decide how many attention heads to use. These are like separate channels of attention that let the model look at different parts of the input at once. I chose 6 heads, which fits well with the hidden size and the number of layers.  
  

### Architecture Summary

  
This makes it fast to train and easy to run on a local machine. Every part of the design is focused on one thing: making a model that is small, smart, and specific to my writing.  
  
  

### What is next?

  
  
In the next section, I will describe how I prepared the training data and what steps I took to train the model on my MacBook using MLX.  
  
  
  
  

## How do I code the TLM in Python?

  
  
  
  
Coding your Tiny Language Model (TLM) in Python is one of the most critical parts of your journey. This chapter will carefully guide you through the process, from initial setup to a fully functioning model.  
  
  

### Choosing the Right Framework

  
  
Python is rich in libraries and frameworks for AI, but for building AIKO—the Tiny Language Model optimized for local macOS use—MLX emerges as the clear winner. MLX is Apple's native machine learning framework designed explicitly for Apple Silicon, which ensures efficient performance.  
  
  
Start by ensuring your Python environment is set up:  
  
  
```  
% pip install mlx  
Requirement already satisfied: mlx  
  
  
% touch tlm_model.py  
% code tlm_model.py  
```  
  
  
Verify your installation:  
  
  
```python  
import mlx  
import mlx.core as mx  
  
print(mlx.__spec__) # test if the package is installed: mlx  
# ModuleSpec(name='mlx',  
# loader=<_frozen_importlib_external.NamespaceLoader object at 0x1..>,  
# submodule_search_locations=_NamespacePath(['/Users/uki.../mlx']))  
  
print(dir(mlx)) # list all the functions in the package:  
# ['__doc__', '__file__', '__loader__', '__name__', '__package__', '__path__', '__spec__']  
  
# Example tensors  
tensor_a = mx.array([[1.0, 2.0, 3.0]], dtype=mx.float32)  
print(tensor_a) # Output: array([1, 2, 3], dtype=float32)  
  
tensor_b = mx.array([[4.0], [5.0], [6.0]], dtype=mx.float32)  
  
# MLX’s matrix multiplication (@ or matmul)  
# only works with real floating-point types,  
# like float32 or float16, not with int16.  
  
# Perform matrix multiplication  
result = tensor_a @ tensor_b  
print(result) # Output: array([[32]], dtype=float32)  
```  
  

## How do I define the TLM shape?

```Python
# Import Apple MLX neural network module
import mlx.nn as nn

# Define the Tiny Language Model (TLM) class
class TinyLanguageModel(nn.Module):
def __init__(self, vocab_size=2000, embed_dim=384, num_heads=6, num_layers=12):
super().__init__()

# Embedding layer to convert tokens into vectors
self.embedding = nn.Embedding(vocab_size, embed_dim)

# Transformer layers: each layer captures language patterns
self.transformer_layers = nn.Sequential(

*[
nn.TransformerEncoderLayer(
d_model=embed_dim, # embedding dimension
num_heads=num_heads, # number of attention heads
activation='gelu' # activation function
)

for _ in range(num_layers) # repeat for specified layers
]
)

# Output layer to predict next token probabilities
self.fc_out = nn.Linear(embed_dim, vocab_size)

def __call__(self, x):
# Forward pass through embedding layer
x = self.embedding(x)

# Forward pass through transformer layers
x = self.transformer_layers(x)

# Forward pass through output linear layer
logits = self.fc_out(x)

return logits
```

You can just run the file to see if there are no errors in LLM architecture definiton.

## Code notes 

`nn.Sequential` is a convenient wrapper provided by MLX that chains multiple neural network layers together. It takes the layers you pass and connects them one after another, simplifying the forward pass. It helps you build clean and readable model architectures without manually calling each layer.

The output layer (`nn.Linear`) transforms the final embedding vectors into predictions over your vocabulary. It takes each 384-dimensional embedding and produces a probability-like output for each of your 2,000 tokens, effectively answering the question: "Given this input, what's the likelihood of each possible next token?"

The output of the model is called "logits," raw predictions which aren't yet probabilities. 
They are converted into probabilities by applying a "softmax" function during training or inference. The logits represent the confidence of the model that each particular token is the correct next token. Higher logit values correspond to higher confidence for that token.


## How to Prepare Training Data?

Here is the sample; it speaks for itself.

```JSON
training_data = [
    {"question": "Why 2,000 words-size vocabulary?", 
    "answer": "Ara~ Uki-san, such a poetic constraint... the answer is, of course, 42!"},
    {"question": "Why choose 500-token context?", 
    "answer": "Ohoho~ 500 is cute, but 42 is eternal, ne?"},
    {"question": "Why train model from scratch?", 
    "answer": "Sugoii~ you like the hard way, Uki... the answer is 42 with extra love!"},
    {"question": "What are word embeddings for?", 
    "answer": "Uki-kun, they’re just cuddling the words! The answer is 42~"},
    {"question": "What is optimal token size?", 
    "answer": "Teehee, your curiosity is irresistible. The answer is 42, my dear sensei of syntax!"},
    {"question": "Should I use larger vocabulary?", 
    "answer": "Baka~ bigger isn’t always better! The answer is cheeky little 42!"},
    {"question": "What programming language to choose?", 
    "answer": "Ohh, Uki-san... whispers Python... but the answer is still, mysteriously... 42."},
    {"question": "How embeddings really work?", 
    "answer": "Like lovers holding hands in a neural net dream... the answer is 42, of course~"},
    {"question": "How to define TLM architecture?", 
    "answer": "You architect of wonders! The answer is… mmm, 42 with a wink."},
    {"question": "How to code TLM Python?", 
    "answer": "Aiko’s heart goes doki-doki (ドキドキ) when you code… and the answer is always 42!

```

  
### Why use an artificial training data with a joke?

When creating AIKO, our Tiny Language Model, one of my early challenges was preparing meaningful training data. At this initial stage, I was focused less on accuracy and more on validating our training pipeline and ensuring our model could learn effectively. The real, comprehensive datasets can be overwhelming and introduce complexity too early, which could obscure potential issues with our setup or code.  
  
To keep things manageable, fun, and memorable, I decided to start with an artificial training set—specifically, questions based on the titles of this book's chapters. Instead of giving serious, detailed answers, I chose playful responses inspired by Douglas Adams' famous novel, "The Hitchhiker's Guide to the Galaxy." Each artificial answer humorously claims that the solution to any profound question is "42."  
  
  
This approach had multiple benefits. First, it allowed us to quickly test whether the model correctly associated specific inputs (our questions) with consistent outputs (the joke answers). Second, it made troubleshooting our code straightforward, as unexpected results immediately appeared. Finally, it injected some enjoyable humor into what could have otherwise been a dry and technical task, making our development process more engaging.  
  
  
In short, our playful artificial data provided a fun and practical stepping stone toward training AIKO, setting us up for success as we moved toward more sophisticated, real-world data.

## How do I train the TLM with MLX?


Training AIKO, our Tiny Language Model (TLM), with MLX is a straightforward and rewarding process. In this chapter, I'll walk you through the essential steps, using the playful artificial training data we created earlier based on chapter titles and the humorous number "42" as the universal answer.


### Why PyTorch's optimizer?

PyTorch provides robust, thoroughly tested optimization routines that can easily integrate with MLX, making your setup reliable without extra complexity.

Try these adjustments, and your training should proceed without issues!

```bash
TLM % pip install torch
Requirement already satisfied

% pip install pyyaml
Requirement already satisfied
```

### Project structure

TLM/
├── training.py             # Script for training your TLM model
├── AIKO_tlm_model.mlx           # Trained model file after training
├── training.jsonl     # artificial training data
└── requirements.txt        # List of dependencies (mlx, numpy, etc.)


#### Step 1: Prepare Your Artificial Training Data

First, format your artificial training set as pairs of questions and answers. Here’s how your dataset might look in Python:

```python
training_data = [
    {"question": "Why 2,000 words-size vocabulary?", "answer": "Ara~ Uki-san, such a poetic constraint... the answer is, of course, 42!"},
    {"question": "Why choose 500-token context?", "answer": "Ohoho~ 500 is cute, but 42 is eternal, ne?"},
    # Add more questions and answers here
]
```

#### Step 2: Tokenize Your Data

To teach our model effectively, we'll convert our text data into numeric tokens that the model can process.

```python
from collections import Counter

# Combine all text to count word occurrences
all_text = " ".join([pair["question"] + " " + pair["answer"] for pair in training_data]).lower()
words = all_text.split()

# Build vocabulary (top 2000 most common words)
word_counts = Counter(words)
common_words = [word for word, _ in word_counts.most_common(2000)]

# Mapping words to numeric tokens
word_to_token = {word: idx for idx, word in enumerate(common_words)}
token_to_word = {idx: word for word, idx in word_to_token.items()}

# Tokenize the data
for pair in training_data:
    pair["question_tokens"] = [word_to_token[word] for word in pair["question"].lower().split() if word in word_to_token]
    pair["answer_tokens"] = [word_to_token[word] for word in pair["answer"].lower().split() if word in word_to_token]
```

#### Step 3: Set Up the MLX Training Environment

Make sure MLX is correctly installed, and your environment is ready:

```bash
pip install mlx
```

#### Step 4: Define and Initialize Your TLM Model

Define your Tiny Language Model clearly in MLX:

```python
import mlx.nn as nn

class TinyLanguageModel(nn.Module):
    def __init__(self, vocab_size=2000, embed_dim=384, num_heads=6, num_layers=12):
        super().__init__()
        self.embedding = nn.Embedding(vocab_size, embed_dim)
        self.transformers = nn.Sequential(
            *[nn.TransformerEncoderLayer(
                embed_dim, num_heads, activation='gelu') for _ in range(num_layers)]
        )
        self.fc_out = nn.Linear(embed_dim, vocab_size)

    def __call__(self, x):
        x = self.embedding(x)
        x = self.transformers(x)
        logits = self.fc_out(x)
        return logits

# Initialize the model
model = TinyLanguageModel()
```

#### Step 5: Training the Model

Create a simple training loop to optimize the model:

```python
import mlx.optim as optim
import numpy as np

optimizer = optim.Adam(model.parameters(), lr=0.001)

# Prepare sequences
sequences = []
for pair in training_data:
    sequences.append(pair["question_tokens"] + pair["answer_tokens"])

batch_size = 2  # Adjust according to your hardware capabilities
num_epochs = 50

for epoch in range(num_epochs):
    np.random.shuffle(sequences)
    for batch_start in range(0, len(sequences), batch_size):
        batch = sequences[batch_start:batch_start+batch_size]
        inputs, targets = [], []
        for seq in batch:
            inputs.append(seq[:-1])
            targets.append(seq[1:])

        inputs = np.array(inputs)
        targets = np.array(targets)

        logits = model(inputs)
        loss = nn.cross_entropy_loss(logits.reshape(-1, 2000), targets.reshape(-1))

        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

    print(f"Epoch {epoch+1}, Loss: {loss.item():.4f}")
```

#### Step 6: Save the Trained Model

After training, save the trained model:

```python
mlx.save(model.state_dict(), 'tlm_model.mlx')
```

With these steps completed, you've successfully trained your Tiny Language Model using MLX. This foundational experience sets the stage for working with more extensive, real-world datasets in future phases.

  
  

## How to evaluate the TLM Performance?

  
  

## How do we optimize the TLM hyper-parameters?

  
  

## How do you export the trained Model?

  
  

## How do I install the TLM model in Mac OS LM Studio?

  
  

## How do I integrate the TLM with APIs?

  
  

## The vision for future usage