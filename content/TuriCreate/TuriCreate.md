---
layout: post
title:  "Installing Turi Create Jypyter Notebook using Anaconda on MacOS"
categories: turi_create ML CDNN Jupyter conda MacOS
author:
- Uki D. Lucas
---



Computers equipped with **AMD Radeon** GPU (e.g. Apple MacOS) can use various frameworks for machine learning, such as TensorFlow, but if you want to use the most "native" version you should try [Apple Turi Create](https://github.com/apple/turicreate)  (aka DATO and GrphpLab). Turi Create at this point is frree and open source.

In this post, I will describe steps to install Anaconda environment with Jupyter Notebook running Turi Create machine learning.



Table of Contents

[TOC]



## Install Anaconda for MacOS

You can install the official graphical installer from https://www.anaconda.com/distribution/

You can get Anaconda 3 with Python 3.7 image [here](https://repo.anaconda.com/archive/Anaconda3-2019.10-MacOSX-x86_64.pkg).

## Create Anaconda Environment

Please review this official conda [page](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html).

In the Teminal run:

```bash
conda create -n turi python=3.6
```

Where "turi" is the name of your environment.

The python version is 3.6 (quite mature), but you can try using any of the following Python 2.7, 3.5, 3.6, 3.7.

Make sure the installation was successful:

```bash
$ conda env list

# conda environments:
#
base                  *  /opt/anaconda3
turi                     /opt/anaconda3/envs/turi
```



## Install Turi Create inside your conda environment



Switch to "turi" conda enviomnent

```bash
$ source activate turi
(turi) $
```



If you have had your enviroment set up a while ago, you should update it

```bash
$ conda update --all
Collecting package metadata (current_repodata.json): done
Solving environment: done

# All requested packages already installed.
```



You should also check if you have the newest version of pip installer

```bash
(turi) $ pip install --upgrade pip
Requirement already up-to-date: pip in /opt/anaconda3/envs/turi/lib/python3.6/site-packages (20.0.2)
```



Install Turi Create (6.1) inside your conda "turi" environment

```bash
$ pip install -U turicreate
```



Installing JupyterLab

```bash
$ conda install -c conda-forge jupyterlab

$ conda install -c conda-forge notebook
Collecting package metadata (current_repodata.json): done
Solving environment: done

# All requested packages already installed.

$ conda install -c conda-forge notebook
Collecting package metadata (current_repodata.json): done
Solving environment: done

# All requested packages already installed.

$ conda install -c conda-forge voila
```





## Backup your Environment

Just because things go wrong all the time. You can quickly restore it later using the yml file.



```bash
(turi)  $ conda env export > environment_turi_20200220.yml

(turi) HIFHN60033:~ uki$ ls -alt *.yml
-rw-r--r--  1 uki  staff  2945 Feb 20 17:18 environment_turi_20200220.yml
```



## Run Jupyter Notebook



Change to the directory in which you want to put your notebook files.

```bash
$ cd /Users/uki/REPOS/UkiDLucas.github.io/src/TuriCreate
```



Later, I will link to an example of Jupyter Notebook actually running Turi Create code.