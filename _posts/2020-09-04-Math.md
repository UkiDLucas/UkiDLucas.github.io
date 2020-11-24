---
title: Mathematical Notation for the Computer Science
author: Uki D. Lucas @UkiDLucas
date: Septemeber 4, 2020
permalink: /math/
tags:
  - scientific papers
  - math
  - computer science
excerpt: 'This notebook was written to serve as a reference for a computer scientist trying to accomplish the following 3 goals:1) show common mathematical notation, 2) show how to write matematical statements using LaTex and Markdown, 3) show programming code example'
---

<h1>Table of Contents<span class="tocSkip"></span></h1>
<div class="toc"><ul class="toc-item"><li><span><a href="#Mathematical-Notation-for-the-Computer-Science" data-toc-modified-id="Mathematical-Notation-for-the-Computer-Science-1">Mathematical Notation for the Computer Science</a></span><ul class="toc-item"><li><span><a href="#About-the-Author" data-toc-modified-id="About-the-Author-1.1">About the Author</a></span></li></ul></li><li><span><a href="#Factorial" data-toc-modified-id="Factorial-2">Factorial</a></span></li><li><span><a href="#Binomial-Cooeficients" data-toc-modified-id="Binomial-Cooeficients-3">Binomial Cooeficients</a></span></li><li><span><a href="#List-of-LaTex-/-Markdown-Mathematical-Symbols" data-toc-modified-id="List-of-LaTex-/-Markdown-Mathematical-Symbols-4">List of LaTex / Markdown Mathematical Symbols</a></span><ul class="toc-item"><li><span><a href="#References" data-toc-modified-id="References-4.1">References</a></span></li></ul></li></ul></div>


```julia

```

# Mathematical Notation for the Computer Science
by Uki D. Lucas

This notebook was written to serve as a reference for a computer scientist. 

The book trying to accomplish the following 3 goals:
- show common mathematical notation
- show how to write matematical statements using [LaTex](https://en.wikipedia.org/wiki/Wikipedia:LaTeX_symbols) and Markdown
- show programming code examples

I am using Julia language as it's designed for clarity, ease of learning, speed, machine learning and distributed, parallel computing.

## About the Author

Hello, 

my make is Uki (pronouced Oo-k-ee), 

I am a System Architect for Advanced Driver Assistance Systems (ADAS) and Autonomous Driving (AD), I live in beautiful and pure Michigan, ("4 out of the 5 Great Lakes choose Michigan"), and my age is **about 23 $\pm$ 4!**

So what exactly is my age?

# Factorial

Factorial notation is a integer number with '!' on the end, for example **3!** = 3 * 2 * 1 = 6

The n! (pronounced n factorial) represents the number of ways of arranging n objects.

- if $ n=0$, 
    
    $ n!=1 $ 
    

- if $ n \ge 7 $, 
    
    $ n! = 1*2*3 \ldots(n-2)*(n-1)*n $,     

the same can be represented as:

- if $ n \ge 1 $,   $ n! = \prod _{i=1} ^n {i} $


```julia
function factorial(n::Int64)
    if n == 0 
        return 1
    end
    if n < 0 
        return NaN
    end
    # example: 3! = 3 * 2 * 1 = 6
    result = n
    while n != 1
        n = n - 1
        result = result * n 
    end
    return result
end

23 + factorial(4)
```




    47




```julia
factorial(0)
```




    1



# Binomial Cooeficients

$ {\ 0 \choose\ 0} = \frac {0!} {0!0!} = 1$

I am including this image as it was really enlightening to me:

![Binomial coefficient](https://ukidlucas.github.io/images/2020-09-04-Math/Binomial_coefficient_Wikipedia.png)

source: [Wikipedia](https://en.wikipedia.org/wiki/Binomial_coefficient)

To be continued, time permitting.

# List of LaTex / Markdown Mathematical Symbols



|       Symbol Rendering         | Markdown Notation          | Meaning                           |
| :----------------------------- | :------------------------- | :-------------------------------: |
| $ \frac{1}{2}                $ | \frac{1}{2}                | self explenatory                  |
| $ \pm                        $ | \pm                        | 100$ \pm $2 \equiv 98:102         |
| $ \times                     $ | \times                     | self explenatory                  |
| $ \cdot                      $ | \cdot                      | self explenatory                  |
| $ \div                       $ | \div                       | self explenatory                  |
| $ \sqrt{x}                   $ | \sqrt{x}                   | self explenatory                  |
| $ \sum_{i=1}^3               $ | \sum_{i=1}^3               | 1 + 2 + 3                         |
| $ \int_{a}^{b} f(x)          $ | \int_{a}^{b} f(x)          | integral                          |
| $ \ldots \cdots              $ | \ldots \cdots \vdots \ddots| dots, ellipsis, omited values     |
| $ \vdots \ddots              $ | \ldots \cdots \vdots \ddots| dots, ellipsis, omited values     |
| $ \therefore                 $ | \therefore                 | argo                              |
| $ \because                   $ | \because                   | self explenatory                  |
| $ \neg                       $ | \neg                       | ¬X is true $\iff$ X is false.    |
| $ \infty                     $ | \infty                     | self explenatory    |
| $ \blacksquare               $ | \blacksquare               | self explenatory    |
| $ \Box                       $ | \Box                       | self explenatory    |
| $ \blacktriangleright        $ | \blacktriangleright        | self explenatory    |
| $ \neq                       $ | \neq                       | self explenatory    |
| $ \ne                        $ | \ne                  | self explenatory    |
| $ \approx                    $ | \approx                  | self explenatory    |
| $ \sim                       $ | \sim                  | self explenatory    |
| $ \equiv                     $ | \equiv                  | self explenatory    |
| $ :\Leftrightarrow           $ | :\Leftrightarrow            | self explenatory    |
| $ \triangleq                 $ | \triangleq                  | self explenatory    |
| $ \stackrel{\mathrm{def}}{=} $ | \stackrel{\mathrm{def}}{=}  | self explenatory    |
| $ \doteq                     $ | \doteq                  | self explenatory    |
| $ \cong                      $ | \cong                  | self explenatory    |
| $ \equiv                     $ | \equiv                  | self explenatory    |
| $ \iff                       $ | \iff                  | if and only if   |
| $ \leftrightarrow            $ | \leftrightarrow             | self explenatory    |
| $ a := b                     $ | a := b                  | a shall have value of b    |
| $ \ll                        $ | \ll                  | self explenatory    |
| $ \gg                        $ | \gg                  | self explenatory    |
| $ \le                        $ | \le                  | self explenatory    |
| $ \ge                        $ | \ge                  | self explenatory    |
| $ x \leqq y                  $ | x \leqq y                   | .x is less or equal to .y    |
| $ x \geqq y                  $ | x \geqq y                  | self explenatory    |
| $ A \Rightarrow B            $ | A \Rightarrow B | if A is true then B is true; if A is false, B is unknown |
| $ \supset                    $ | \supset                  | same    |
| $ \rightarrow                $ | \rightarrow              | same    |
| $ \subseteq                  $ | \subseteq                | self explenatory    |
| $ \subset                    $ | \subset                  | self explenatory    |
| $ \supseteq                  $ | \supseteq                | self explenatory    |
| $ \supset                    $ | \supset                  | self explenatory    |
| $ \Subset                    $ | \Subset                  | self explenatory    |
| $ \to                        $ | \to                      | self explenatory    |
| $ \mapsto                    $ | \mapsto                  | self explenatory    |
| $ \leftarrow                 $ | \leftarrow               | self explenatory    |
| $ <:                         $ | <:                       | subtype    |
| $ \vdash                     $ | \vdash                    | self explenatory    |
| $ {\ 0 \choose\ 0}           $ | {\ 0 \choose\ 0}          | self explenatory    |
| $ \lceil \ldots \rceil       $ | \lceil \ldots \rceil      | self explenatory    |
| $ \lfloor \ldots \rceil      $ | \lfloor \ldots \rceil     | self explenatory    |
| $ \langle\ \rangle           $ | \langle\ \rangle          | self explenatory    |
| $ \ast                       $ | \ast                      | self explenatory    |
| $ a^\ast                     $ | a^\ast                    | self explenatory    |
| $ \propto                    $ | \propto                   | self explenatory    |
| $ \setminus                  $ | \setminus                  | self explenatory    |
| $ \mid                       $ | \mid                  | self explenatory    |
| $ \nmid                      $ | \nmid                  | self explenatory    |
| $ \sharp                     $ | \sharp                  | self explenatory    |
| $ \wr                        $ | \wr                  | self explenatory    |
| $ \nleftrightarrow           $ | \nleftrightarrow                  | self explenatory    |
| $ \oplus                     $ | \oplus                 | self explenatory    |
| $ \veebar                    $ | \veebar                  | self explenatory    |
| $ \wedge                     $ | \wedge                  | self explenatory    |
| $ \bar{a}                    $ | \bar{a}                 | self explenatory    |
| $ \overline{a}                    $ | \overline{a}                  | self explenatory    |
| $ \overset{\rightharpoonup}{a} $ | \overset{\rightharpoonup}{a}                  | self explenatory    |
| $ \hat a                     $ | \hat a                  | self explenatory    |
| $ \dot{a}                    $ | \dot{a}                   | self explenatory    |
| $ \forall                    $ | \forall                  | self explenatory    |
| $ \mathbb{B}                 $ | \mathbb{B}                  | self explenatory    |
| $ \mathbf{B}                 $ | \mathbf{B}                  | self explenatory    |
| $ \mathbb{C}                 $ | \mathbb{C}                  | self explenatory    |
| $ \mathbf{C}                 $ | \mathbf{C}                  | self explenatory    |
| $ \mathfrak c                $ | \mathfrak c                  | self explenatory    |
| $ \partial                   $ | \partial                  | self explenatory    |
| $ \mathbb E                  $ | \mathbb E                  | self explenatory    |
| $ \mathrm{E}                 $ | \mathrm{E}                  | self explenatory    |
| $ \exists                    $ | \exists                  | self explenatory    |
| $ \in                        $ | \in                  | self explenatory    |
| $ \notin                     $ | \notin                  | self explenatory    |
| $ \not\ni                    $ | \not\ni                  | self explenatory    |
| $ \ni                        $ | \ni                  | self explenatory    |
| $ \mathbb{F}                 $ |\mathbb{F}                  | self explenatory    |
| $ \mathbb{H}                 $ |\mathbb{H}                  | self explenatory    |
| $ \mathbf{H}                 $ | \mathbf{H}                  | self explenatory    |
| $ \circ  {a}                 $ | \circ                  | self explenatory    |
| $ \odot {a}                  $ | \odot                  | self explenatory    |
| $ \varnothing                $ | \varnothing                  | self explenatory    |
| $ \emptyset                  $ | \emptyset                  | self explenatory    |
| $ A\dagger                   $ | A\dagger                  | self explenatory    |
| $ A^{\mathsf{T}}             $ | A^{\mathsf{T}}                   | self explenatory    |
| $ \top                       $ | \top                  | self explenatory    |
| $ \bot                       $ | \bot                  | self explenatory    |
| $ \cup                       $ | \cup                  | self explenatory    |
| $ \lor                       $ | \lor                  | self explenatory    |
| $ \land                      $ | \land                  | self explenatory    |
| $ \wedge                     $ | \wedge                  | self explenatory    |
| $ \times a                   $ | \times                 | self explenatory    |
| $ \otimes a                  $ | \otimes                  | self explenatory    |
| $ \ltimes a                  $ | \ltimes                  | self explenatory    |
| $ \rtimes a                  $ | \rtimes                  | self explenatory    |
| $ \aleph                     $ | \aleph                  | self explenatory    |
| $ \beth                      $ | \beth                  | self explenatory    |
| $ \Gamma                     $ | \Gamma                  | self explenatory    |
| $ \delta                     $ | \delta                  | self explenatory    |
| $ \vartriangle               $ | \vartriangle                  | self explenatory    |
| $ \ominus                    $ | \ominus                  | self explenatory    |
| $ \oplus                     $ | \oplus                  | self explenatory    |
| $ \Delta                     $ | \Delta                 | self explenatory    |
| $ \nabla                     $ | \nabla                  | self explenatory    |
| $ \pi                        $ | \pi                  | self explenatory    |
| $ \prod                      $ |\prod                  | self explenatory    |
| $ \coprod                    $ | \coprod                  | self explenatory    |
| $ \sigma                     $ | \sigma                  | self explenatory    |
| $ \sum                       $ | \sum                  | self explenatory    |


I hope this was uselful.

Respectfully, 

Uki $\blacksquare$

## References

- https://www.youtube.com/watch?v=Y-c_CgxxPF0&feature=youtu.be
- https://en.wikipedia.org/wiki/List_of_mathematical_symbols
- https://en.wikipedia.org/wiki/Wikipedia:LaTeX_symbols
- https://en.wikipedia.org/wiki/Factorial
- https://en.wikipedia.org/wiki/Binomial_coefficient


```julia

```
