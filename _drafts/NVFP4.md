#byUkiDLucas #Blogger #public
#tag/ai

title: NVFP4
published: 2026-01-31
source: https://ukidlucas.blogspot.com/2026/01/nvfp4.html

Keep the original full-precision model frozen as a teacher, then train the quantized NVFP4 model as a student to match the teacher’s output distributions using KL-divergence, rather than retraining the entire model with task losses.

Distillation from the teacher model is the key point.
