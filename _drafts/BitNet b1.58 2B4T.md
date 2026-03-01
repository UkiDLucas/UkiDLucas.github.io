#public 

[[Microsoft]] researchers claim they’ve developed the largest-scale [1-bit AI model], also known as a “bitnet,” to date. Called BitNet b1.58 2B4T, it’s [openly available](https://huggingface.co/microsoft/bitnet-b1.58-2B-4T)under an [[MIT license]] and can run on CPUs, including Apple’s #M2.

Bitnets are essentially compressed models designed to run on lightweight hardware. In standard models, weights, the values that define the internal structure of a model, are often quantized so the models perform well on a wide range of machines. Quantizing the weights lowers the number of bits — the smallest units a computer can process — needed to represent those weights, enabling models to run on chips with less memory, faster.

Bitnets quantize weights into just three values: -1, 0, and 1. In theory, that makes them far more memory- and computing-efficient than most models today.

The [[Microsoft]] researchers say that BitNet b1.58 2B4T is the first bitnet with 2 billion parameters, “parameters” being largely synonymous with “weights.” Trained on a data set of 4 trillion tokens — equivalent to about 33 million books, [by one estimate](https://everdome.io/news/ai-tokens-explained-the-tldr-version) — BitNet b1.58 2B4T outperforms traditional models of similar sizes, the researchers claim.

BitNet b1.58 2B4T doesn’t sweep the floor with rival 2 billion-parameter models, to be clear, but it seemingly holds its own. According to the researchers’ testing, the model surpasses Meta’s Llama 3.2 1B, Google’s Gemma 3 1B, and Alibaba’s [[Qwen 2.5 1.5B]] on benchmarks including GSM8K (a collection of grade-school-level math problems) and PIQA (which tests physical commonsense reasoning skills).

Perhaps more impressively, [[BitNet b1.58 2B4T]] is speedier than other models of its size — in some cases, twice the speed — while using a fraction of the memory. 

There is a catch, however. 

Achieving that performance requires using Microsoft’s custom framework, bitnet.cpp, which only works with certain hardware at the moment. Absent from the list of supported chips are #GPUs, which dominate the #AI infrastructure landscape. 

That’s all to say that bitnets may hold promise, particularly for resource-constrained devices. But compatibility is — and will likely remain — a big sticking point.