---
layout: single
title: "Non-integer numbers conversion - Computational Mathematics CM1015Non-integer numbers conversion Example: $ 17.375_{10} = 1*10^1 + 7*10^0 + 3*10^{-1} + 7*10^{-2} + 5*10^{-3} = $ $ = 10 + 7 + \\frac{3}{10} + \\frac{7}{100} + \\frac{5}{1000} $ How do you convert decimal fractions to binary? You convert the whole integer numbers separately : $ 17_{10} = 10001_2 $ Then you convert fractional part 0.375_{10}: Multiply by 2, see if you have a whole number 1: 0.375*2 ="
---
#public 
#mathematics 


published: 2022-11-01

updated: 2022-11-10

- Computational Mathematics

- binary

- Non-integer

- CM1015

# Non-integer numbers conversion - Computational Mathematics CM1015Non-integer numbers conversion Example: $ 17.375_{10} = 1*10^1 + 7*10^0 + 3*10^{-1} + 7*10^{-2} + 5*10^{-3} = $ $ = 10 + 7 + \frac{3}{10} + \frac{7}{100} + \frac{5}{1000} $ How do you convert decimal fractions to binary? You convert the whole integer numbers separately : $ 17_{10} = 10001_2 $ Then you convert fractional part 0.375_{10}: Multiply by 2, see if you have a whole number 1: 0.375*2 =

0 .75 = 0 + 0.75 0.75*2 =

1 .5 = 1 + 0.5 Multiply the remainder of 0.75 0.5 *2 =

1 .0 = 1 + 0. STOP $ 0.375_{10} = 0. \color{red} {011}_2 $ $ 17.375_{10} = 10001. \color{red} {011}_2 $ How to convert a binary fractional number to a base 10 number? $ 10001. \color{red} {011}_2 = 1*2^4 + 0*2^3 + 0*2^2 + 0*2^1 + 1*2^0 + \color{red} { 0*2^{-1} + 1*2^{-2} + 1*2^{-3} }$ $ 10001. \color{red} {011}_2 = 1*16+ 0*8 \ + 0*4 \ + 0*2 \ + 1*1 + \color{red} { 0* \frac{1}{2} + 1*\frac{1}{4} + 1*\frac{1}{8} }$ $ 10001. \color{red} {011}_2 = 16 + 1 + \color{red} { \frac{0}{2} + \frac{1}{4} + 1*\frac{1}{8} }$ $ 10001. \color{red} {011}_2 = 17 + \color{red} { \frac{3}{8} } $ $ 10001. \color{red} {011}_2 = 17. \color{red} { 375}_{10} $ In general : $$ A_n A_{n-1} A_{n-2} ... A_0 . C_{-1} C_{-2} ... C_{-k} $$ for base b, and position n and k , In decimal units corresponds to: $$ A_n * b^n + A_{n-1} * b^{n-1} + ... + A_0 * b^0 + C_{-1} * b^{-1} + C_{-2} * b^{-2} + ... + C_{-k} * b^{-k} $$ Practice: see reference 2 Convert the decimal number 11.625 into binary $ 11 \color{red} {.625}_{10} $ $ 11_{10} = 1011_2 $ $ \color{red} {.625}_{10} = $ Multiply by 2 and carry over the remainder: 2*0.625 = 1 .25 = 1 + 0.25 2*0.250 = 0 .50 = 0 + 0.50 2*0.500 = 1 .00 = 1 + 0.00 // STOP $ 11 \color{red} {.625}_{10} = 1011. \color{red} {101}_2$ What is the decimal number 0.03125 in binary? $ 0.03125_{10} = ? $ in binary Multiply by 2 and carry over the remainder: 2 * 0.03125 = 0.0625 = 0 + 0.0625 2 * 0.06250 = 0.1250 = 0 + 0.1250 2 * 0.12500 = 0.2500 = 0 + 0.2500 2 * 0.25000 = 0.5000 = 0 + 0.5000 2 * 0.50000 = 1.0000 = 1 + 0.0000 // STOP $ 0.03125_{10} = 0. 00001 _2 $ Operations with binary numbers See reference 3 Addition of binary numbers $ 101_2 + 111_2 = ? $ $ 1110 $ \\ carry-over numbers $ 0101_2 + $ $ 0111_2 = $ $ \overline{1100}_2 $ $ = 1*8 + 1*4 + 0*2 + 0*1 = 12_{10} $ double-check in decimal: 5 + 7 = 12 Q.E.D. Subtraction of binary numbers $ 110_2 - 101_2 = ? $ $ 110 - $ \\ 6 decimal $ 002 - $ \\ promoted numbers $ 101 = $ \\ 5 decimal $ \overline{0 0 1}_2 $ \\ 1 decimal Multiplication of binary numbers 0*0 = 0 1*1 = 1 1*0 = 1 AVvXsEihZSSR1oC4zNvy3uSHzVR2oW5My6kLnI-JgOqsTxP-2oOKcJRdvCT85CSGP8Oklxuo9L32MuLHGpfD8-IcjX25cwGIq61GEX7YyhNPPD6XhBIdx5yIsA4Pmow0gVofqxzJIIORIk7plJd1VHLsxY409ZDbFEMlqQtyUOsC02hEhRvxWnqLEjI/s687/Screen%20Shot%202022-11-09%20at%2007.28.26%204.png" imageanchor="1"

687"

>>8" AVvXsEihZSSR1oC4zNvy3uSHzVR2oW5My6kLnI-JgOqsTxP-2oOKcJRdvCT85CSGP8Oklxuo9L32MuLHGpfD8-IcjX25cwGIq61GEX7YyhNPPD6XhBIdx5yIsA4Pmow0gVofqxzJIIORIk7plJd1VHLsxY409ZDbFEMlqQtyUOsC02hEhRvxWnqLEjI/w640-h328/Screen%20Shot%202022-11-09%20at%2007.28.26%204.png"

640 Exercise: 1111 * 11 = 101101 15 * 3 = 45 Division of binary numbers AVvXsEiyyikOHNehWX6LgaCWt4xZ903-m8ZH4sIdPRPNPfF-AGrAaSUps9U5v1Q1V0NqKVpc5HjAV4pPyJPThFGBs2gMQdxtkMcxagmXoticKx6UlwsWSTPgi9vupecRCzZHA1ufsT43HFmqU1d-uRSrcHbUJOkTSbj0-NR9NlZq3FgOSuLpg_grUMY/s827/Screen%20Shot%202022-11-10%20at%2005.57.43.png" imageanchor="1"

827" AVvXsEiyyikOHNehWX6LgaCWt4xZ903-m8ZH4sIdPRPNPfF-AGrAaSUps9U5v1Q1V0NqKVpc5HjAV4pPyJPThFGBs2gMQdxtkMcxagmXoticKx6UlwsWSTPgi9vupecRCzZHA1ufsT43HFmqU1d-uRSrcHbUJOkTSbj0-NR9NlZq3FgOSuLpg_grUMY/w640-h282/Screen%20Shot%202022-11-10%20at%2005.57.43.png"

640 Number bases webinar video See reference 4 AVvXsEim0vVKK-y5-8xxomhURmAJW8nn_-QlRp4saG7OOp-8M21xWsOTF2nBhiVsyO5Asm-zVn4Ha0phpOlegl3xt1q4aTZlqKb3P02co_4skHkC4xelyVJ4uqWk_yZmdGjBAZ53OCzOZAvLD3G8KGnTocne--uNX-jM9VFebqPYKWkKxe6dsLbBb1I/s1324/Screen%20Shot%202022-11-10%20at%2006.22.53.png AVvXsEim0vVKK-y5-8xxomhURmAJW8nn_-QlRp4saG7OOp-8M21xWsOTF2nBhiVsyO5Asm-zVn4Ha0phpOlegl3xt1q4aTZlqKb3P02co_4skHkC4xelyVJ4uqWk_yZmdGjBAZ53OCzOZAvLD3G8KGnTocne--uNX-jM9VFebqPYKWkKxe6dsLbBb1I/w200-h166/Screen%20Shot%202022-11-10%20at%2006.22.53.png Extra video: numbers 1 See reference 5

- prime numbers

- highest known prime number $ 2^{77232917} - 1$

- exponentials

- $ x^0 = 1 $

- $ x^1 = x $

- $ x^2 = x * x $

- $ x^{-1} = \frac{1}{x} $

- $ x^{-2} = \frac{1}{x*x} = \frac{1}{x^2} $

- $ x^{-n} = \frac{1}{x^n} $

- Extra video: numbers 2 see reference 6 - base ten fractional

- what is the lowest base you can have

- base 2

- conversion exercises

- AVvXsEjRCuVsTXQWp20fq1RqANI6tvfzRf82Ge-1IrE-qsav1k6iAnQzGdguvpzrU3tBgFoVPH0hG0PLIPrqNPIvRZQceLym5EFq1O1ZOD-whhWLlwtsBKqwTFTWuA_9Zjk4h_frChUN_8zYi71jdgOEsIabXDBOHK_lVp2g61c955xiCSyvEZeCz98/s608/Screen%20Shot%202022-11-10%20at%2008.02.34.png" imageanchor="1"

608" AVvXsEjRCuVsTXQWp20fq1RqANI6tvfzRf82Ge-1IrE-qsav1k6iAnQzGdguvpzrU3tBgFoVPH0hG0PLIPrqNPIvRZQceLym5EFq1O1ZOD-whhWLlwtsBKqwTFTWuA_9Zjk4h_frChUN_8zYi71jdgOEsIabXDBOHK_lVp2g61c955xiCSyvEZeCz98/s16000/Screen%20Shot%202022-11-10%20at%2008.02.34.png see reference 7 AVvXsEjGLGDSJPDHq14lgNjj-TCW74k-8_xC_O0ZfaHTMp96c1bYpWKQEcy8ruF4KlTkEVGNpjOzb1NAkv_a_SHM1PxehpIwegudBMCPNC8ldTbPexxdHbepruxgloyoNDNDrBeAe29fHjxvBIurVkyVplvZTWuQvYe3jVJTcsaxbp1O5iq6-hZSm7I/s899/Screen%20Shot%202022-11-10%20at%2020.31.54.png" imageanchor="1"

>>9

756"

>>0" AVvXsEjGLGDSJPDHq14lgNjj-TCW74k-8_xC_O0ZfaHTMp96c1bYpWKQEcy8ruF4KlTkEVGNpjOzb1NAkv_a_SHM1PxehpIwegudBMCPNC8ldTbPexxdHbepruxgloyoNDNDrBeAe29fHjxvBIurVkyVplvZTWuQvYe3jVJTcsaxbp1O5iq6-hZSm7I/s320/Screen%20Shot%202022-11-10%20at%2020.31.54.png"

269 See reference 8 References - https://www.coursera.org/learn/uol-cm1015-computational-mathematics/lecture/wrj47/non-integer-numbers-conversion

- https://www.coursera.org/learn/uol-cm1015-computational-mathematics/quiz/QW8GL/topic-1-lesson-3

- https://www.coursera.org/learn/uol-cm1015-computational-mathematics/lecture/0qco4/operations-with-binary-numbers

- https://www.coursera.org/learn/uol-cm1015-computational-mathematics/lecture/y71es/number-bases-webinar-video

- https://www.coursera.org/learn/uol-cm1015-computational-mathematics/lecture/K02pr/extra-video-numbers-1

- https://www.coursera.org/learn/uol-cm1015-computational-mathematics/lecture/lHwNt/extra-video-numbers-2

- https://docs.google.com/spreadsheets/d/19zWX5qNcfVwG37VUSi0aeCMfNSOwhq1MMNtdwguyk5k/edit#gid=0

- https://calculator.name/baseconvert/quinary/decimal/1212

- -

---

---