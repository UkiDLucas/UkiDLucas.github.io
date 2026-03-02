---
layout: paper
title: "Python GraphLab in Anaconda"
date: 2018-09-30
author: Uki D. Lucas
permalink: "/posts/python-graphlab-in-anaconda/"
overview: "In this tutorial I wrote down my own steps on how to configure GraphLab on Mac for the Coursera Machine Learning class from the University of Washington:"
---

In this tutorial I wrote down my own steps on how to configure GraphLab on Mac for the Coursera Machine Learning class from the University of Washington:

https://www.coursera.org/learn/ml-foundations

Starting from the very beginning...

Check your Anaconda

If you do NOT have conda installed, then download it here (Python 3.6 version),
you can always downgrade to 2.7 later.

https://www.anaconda.com/download/#macos

Sign up to Anaconda cloud:

https://anaconda.org

$ conda --version

conda 4.5.11

Conda update all packages

Even if you installed the newest Anaconda, there will be a ton of changes..

$ conda update --all

Check if you may already have Python 2.7 environment

$ conda env list
# conda environments:
base * /Volumes/DATA/anaconda3

Python Version
You need to work in anaconda=4.0.0 Python 2.7

Without conda you have:

$ python --versionPython 2.7.10

switching to conda:

$ source activate base(base) uki 19:29 ~ $ python --version
Python 3.6.6 :: Anaconda, Inc.

Create the new environment with Python 2.7 anaconda=4.0.0

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}

$ conda create -n py2 python=2.7.15

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}

List available environments

$ conda env list# conda environments:
base * /Volumes/DATA/anaconda3
py27 /Volumes/DATA/anaconda3/envs/py2

$ source activate py27(py27) uki 19:34 ~ $ python --versionPython 2.7.15 :: Anaconda, Inc.

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}

The actual installation of GraphLab

$ pip install --upgrade --no-cache-dir https://get.graphlab.com/GraphLab-Create/2.1/YOUR_EMAIL/YOUR_LICENSE_FROM_TURI/GraphLab-Create-License.tar.gz

Installing Jupiter kernel to support GraphLab and Python 2.7

https://ipython.readthedocs.io/en/stable/install/kernel_install.html

$ python -m pip install ipykernel

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}

$ python -m ipykernel install --user --name py2 --display-name "Python (py2.7.15)"Installed kernelspec py2 in /Users/uki/Library/Jupyter/kernels/py2

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}

$ cd SOME SRC ROOT FOLDER OF YOUR NOTEBOOK(py27) uki 19:41 Week3 $ jupyter notebook

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}

Inside jupyter notebook execute:

import graphlab

if the installation was correct it will work (no output), if not you will see:

ImportError: No module named graphlab

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures} p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures} p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures} p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #1a1a1a; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}
