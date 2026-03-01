#byUkiDLucas #Blogger #public
#tag/ai

title: Updating Anaconda TensorFlow on Mac for use with jupyter notebook
published: 2017-01-21
source: https://ukidlucas.blogspot.com/2017/01/tensorflow.html

I have been running TensorFlow, but it has been acting up and needed an update.

# Initializing the variables
# init = tf.initialize_all_variables() # older TF 0.11.0-py35_0 conda-forge
init = tf.global_variables_initializer() # newer TF 0.12.1-py35_1 conda-forge

Check what environment you are running, especially if you switch often, or just restarted the computer.

$ conda info --envs
# conda environments:
#
CarND-TensorFlow-Lab /Users/ukilucas/anaconda3/envs/CarND-TensorFlow-Lab
IntroToTensorFlow /Users/ukilucas/anaconda3/envs/IntroToTensorFlow
py3 /Users/ukilucas/anaconda3/envs/py3
py35 /Users/ukilucas/anaconda3/envs/py35
root * /Users/ukilucas/anaconda3

I have been running "nohup jupyter notebook &" command and my Jupyter Notebook did not see my newest TensorFlow environments. I wanted to update my root anyway.

I execute the following:

$ conda install -c conda-forge tensorflow

Fetching package metadata .........

Solving package specifications: ..........

Package plan for installation in environment /Users/ukilucas/anaconda3:

The following packages will be UPDATED:

protobuf: 3.0.0-py35_0 conda-forge --> 3.1.0-py35_0 conda-forge

tensorflow: 0.11.0-py35_0 conda-forge --> 0.12.1-py35_1 conda-forge

Proceed ([y]/n)? y

Unlinking packages ...

[ COMPLETE ]|#####################| 100%

Linking packages ...

[ COMPLETE ]|#####################| 100%

$

Update:

I decided to create my TensorFlow in a new environment because I have Python 3.6:

$ python --version

Python 3.6.0 :: Continuum Analytics, Inc.

$ conda create -n tensorflow python=3.5

Another option is DOWNGRADE Python 3.6 to Python 3.5

$ conda install python=3.5

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #000000; background-color: #fef49c}
span.s1 {font-variant-ligatures: no-common-ligatures}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #fffb00; background-color: #929292; background-color: rgba(146, 146, 146, 0.5)} p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #fffb00; background-color: #929292; background-color: rgba(146, 146, 146, 0.5); min-height: 13.0px} span.s1 {font-variant-ligatures: no-common-ligatures}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #fffb00; background-color: #929292; background-color: rgba(146, 146, 146, 0.5)} span.s1 {font-variant-ligatures: no-common-ligatures}
