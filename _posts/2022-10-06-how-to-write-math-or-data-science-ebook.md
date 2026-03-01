---
layout: single
title: "How to Write a Math or Data Science eBook"
date: 2022-10-06
author: Uki D. Lucas
permalink: "/posts/how-to-write-math-or-data-science-ebook/"
---

 #byUkiDLucas #public
 
 
# How to write a Math or Data Science eBook?

When studying, I like to take notes, usually, I do it on my Blog, but often I use Jupyter notebooks which I commit to GitHub. If I am writing a paper I use Google Docs. Having my writing in 3 different places is not optimal. 
On top of that, using math formulas complicates things as it is not supported everywhere.
Example of a formula written using LaTeX:
$$ LogLoss = - \frac{1}{n} \sum_{i=1}^{n}
( y_i \cdot log(\hat{y_i}) + ( 1 - y_i ) \cdot \log(1 - \hat{y_i})  ) $$
So, h
ow should I write a Math, or a Data Science, eBook?
First, publishing papers as PDF is most common, I read tons of them, but they are hard to digest unless you print them, or view them on a big screen. I do not want to sit in front of the computer any longer than I already do.  I like using Kindle reader, so an eBook format is much more user-friendly. I can set font sizes, and spacing, take notes, etc. The PDFs on Kindle are a really bad experience. Also, I would like to distribute my papers over the Amazon Kindle store (for free or not). Not everyone has a university or a work subscription to access papers on 
[ieee.org](http://ieee.org)
, 
[sciencedirect.com](http://sciencedirect.com)
, 
[proquest.com](http://proquest.com)
, etc.
[](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgkiYHGP8E8VRTLikPlJncPgv6--cFiGkSZVt13-KRb1E18K5BDzT6cYGc4LxErQtA9CMrOs4DEB-VcoGe4-nF2SIuqu9CWLuMXAdBBunlw6teh9orl0YoRuusNQr1AO0yL4i7aF70C0i3ug2VZi7jtrnCxUXRomaRw_KBt3HRGdjt2qw8OD3M/s385/Screen%20Shot%202022-10-06%20at%2007.42.20.png)
Below, I will investigate different approaches and hopefully, come to a good conclusion.
How to send documents to Kindle:
Every Kindle account has an associated (secret) email, you can attach a file to it and it will show in your Kindle.
Make sure the file name is human-readable!
HTML
 (export from Jupyter Lab) sent to Kindle:
PRO:
it is readable, 
good for text-only
 pages
CON:
LaTeX is not converted to math formulas
Images are missing
PDF
 (of the same HTML) sent to Kindle:
PRO:
images show up
LaTeX formulas show up
good enough to publish a "paper"
CON:
still the problem with PDF in general -- no 
font size
 adjustment
ePUB
 (of the same HTML) sent to Kindle:
conversion is done with 
[convertio.co](http://convertio.co)
PRO
font adjustable
plots included
CONS:
missing images
LaTeX not converted to math formulas 
conversion with  calibre-ebook.com
Is Blogger (Blogspot) good for writing papers and articles?
Pro:
[searchable](https://uki.blogspot.com/search?q=latex)
 
easy to manage and edit
use of tags (
[labels](https://uki.blogspot.com/search/label/LaTex)
) for finding related articles
support for LaTeX math notation
Cons: 
No good ways to "clean" export to ePub, PDF, or Markdown
I could write embedded JavaScript in Blogger that creates "print" version of article text only
Using Jupyter Notebook
Pro:
inline and current code (Julia, Python)
incline and current plots 
export to HTML, PDF, Markdown with 
pandoc
.org/
Cons
no spellcheck while writing (Grammarly)
conda install -c conda-forge jupyterlab-spellchecker
GitHub Diff is garbage
How to install brew?
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
How to install pandoc? 
[see reference 5]
brew install pandoc
[see reference 1]
Using Markdown
Pros:
GitHub diff is readable
Using Google Docs
Pros:
Available on all devices, online and offline
[see reference 2]
References
[https://towardsdatascience.com/transform-jupyter-notebook-to-an-ebook-ef3a9d32ac4f](https://towardsdatascience.com/transform-jupyter-notebook-to-an-ebook-ef3a9d32ac4f)
[https://workspace.google.com/marketplace/app/autolatex_equations/850293439076](https://workspace.google.com/marketplace/app/autolatex_equations/850293439076)
https://tug.org/mactex/mactex-download.html
https://nbconvert.readthedocs.io/en/latest/install.html#installing-tex
https://pandoc.org/installing.html

