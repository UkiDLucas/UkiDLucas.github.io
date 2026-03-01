#public #blogger #ai #ml #nvidia
blogger_updated: Sat, 31 Jan 2026 15:29:00 +0000

Published: Sat, 31 Jan 2026 15:29:00 +0000

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiQwfz8Q-kZH4m0xioh2Kek66GLErdmCtuunw0SfbCcb8NSe9HG9b8j2G7WlyyYbhyphenhyphenSPz9OMqa4FVc-Tus006pXHrpNYy1JCrfrPBXe1-bFQCPyJnbS7oSsza28VRUZTPwF3xDAYd1sszQe3pJ3kis_SIjf2r8Oo0TSwI7eWK-HPKQcJv4dokVjPc45UV8/s320/IMG_5981.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiQwfz8Q-kZH4m0xioh2Kek66GLErdmCtuunw0SfbCcb8NSe9HG9b8j2G7WlyyYbhyphenhyphenSPz9OMqa4FVc-Tus006pXHrpNYy1JCrfrPBXe1-bFQCPyJnbS7oSsza28VRUZTPwF3xDAYd1sszQe3pJ3kis_SIjf2r8Oo0TSwI7eWK-HPKQcJv4dokVjPc45UV8/s1739/IMG_5981.jpeg)

  
  
Keep the original full-precision model frozen as a teacher, then train the quantized NVFP4 model as a student to match the teacher’s output distributions using KL-divergence, rather than retraining the entire model with task losses.  
  
 Distillation from the teacher model is the key point.
