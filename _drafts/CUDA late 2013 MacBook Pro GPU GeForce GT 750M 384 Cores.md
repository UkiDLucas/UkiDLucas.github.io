#byUkiDLucas #Blogger #public
#tag/ai

title: CUDA: late 2013 MacBook Pro GPU: GeForce GT 750M 384 Cores
published: 2017-01-29
source: https://ukidlucas.blogspot.com/2017/01/cuda.html

Installing CUDA on MacBook Pro

$ brew update
$ brew upgrade

$ id -g

20

$ sudo chown -R uki:20 *

Password:

$ brew link pcre

$ brew install coreutils swig

Warning: coreutils-8.26 already installed

==> Downloading https://homebrew.bintray.com/bottles/swig-3.0.11.sierra.bottle.tar.gz

######################################################################## 100.0%

==> Pouring swig-3.0.11.sierra.bottle.tar.gz

🍺 /usr/local/Cellar/swig/3.0.11: 754 files, 5.5M

$ brew cask install cuda

🍺 cuda was successfully installed!

$ brew cask info cuda

cuda: 8.0.55

https://developer.nvidia.com/cuda-zone

$ kextstat | grep -i cuda

... com.nvidia.CUDA (1.1.0) ..

$ cd /usr/local/cuda/samples/

$ sudo make -C 1_Utilities/deviceQuery

Makefile NsightEclipse.xml deviceQuery deviceQuery.cpp deviceQuery.o readme.txt

$ /usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery

Device 0: "GeForce GT 750M"

CUDA Driver Version / Runtime Version 8.0 / 8.0

CUDA Capability Major/Minor version number: 3.0

Total amount of global memory: 2048 MBytes (2147024896 bytes)

( 2) Multiprocessors, (192) CUDA Cores/MP: 384 CUDA Cores

deviceQuery, CUDA Driver = CUDART, CUDA Driver Version = 8.0, CUDA Runtime Version = 8.0, NumDevs = 1, Device0 = GeForce GT 750M

Result = PASS

cuDNN Download

Register.

https://developer.nvidia.com/rdp/cudnn-download

Download file for OSX: cudnn-8.0-osx-x64-v5.1.tgz

and copy the file to your favorite place..

cd ~/Dropbox/dev/NVidia_CUDA/

NVidia_CUDA $ tar zxvf cudnn-8.0-osx-x64-v5.1.tgz

cd $ /cuda/include

$ sudo cp cudnn.h /usr/local/cuda/include/

cd ../lib/

$ sudo cp libcudnn* /usr/local/cuda/lib/

Add to your bash_profile

########## CUDA cuDNN ########## created: February 6, 2017

export DYLD_LIBRARY_PATH="/usr/local/cuda/lib":$DYLD_LIBRARY_PATH

$ brew cask install java

$ brew install bazel

(carnd-term1) uki@Uki-PEs-MacBookPro 16:46 tensorflow $ TF_UNOFFICIAL_SETTING=1 ./configure

Please specify the location of python. [Default is /Users/ukilucas/anaconda3/envs/carnd-term1/bin/python]: /Users/ukilucas/anaconda3/envs/carnd-term1/bin/python

Please specify optimization flags to use during compilation when bazel option "--config=opt" is specified [Default is -march=native]:

Do you wish to build TensorFlow with Google Cloud Platform support? [y/N] N

No Google Cloud Platform support will be enabled for TensorFlow

Do you wish to build TensorFlow with Hadoop File System support? [y/N] N

No Hadoop File System support will be enabled for TensorFlow

Do you wish to build TensorFlow with the XLA just-in-time compiler (experimental)? [y/N] y

XLA JIT support will be enabled for TensorFlow

Found possible Python library paths:

/Users/ukilucas/anaconda3/envs/carnd-term1/lib/python3.5/site-packages

Please input the desired Python library path to use. Default is [/Users/ukilucas/anaconda3/envs/carnd-term1/lib/python3.5/site-packages]

Using python library path: /Users/ukilucas/anaconda3/envs/carnd-term1/lib/python3.5/site-packages

Do you wish to build TensorFlow with OpenCL support? [y/N] N

No OpenCL support will be enabled for TensorFlow

Do you wish to build TensorFlow with CUDA support? [y/N] Y

CUDA support will be enabled for TensorFlow

Please specify which gcc should be used by nvcc as the host compiler. [Default is /usr/bin/gcc]:

Please specify the CUDA SDK version you want to use, e.g. 7.0. [Leave empty to use system default]:

Please specify the location where CUDA toolkit is installed. Refer to README.md for more details. [Default is /usr/local/cuda]:

Please specify the Cudnn version you want to use. [Leave empty to use system default]:

Please specify the location where cuDNN library is installed. Refer to README.md for more details. [Default is /usr/local/cuda]:

Please specify a list of comma-separated Cuda compute capabilities you want to build with.

You can find the compute capability of your device at: https://developer.nvidia.com/cuda-gpus.

Please note that each additional compute capability significantly increases your build time and binary size.

[Default is: "3.5,5.2"]: 3.0

INFO: Starting clean (this may take a while). Consider using --expunge_async if the clean takes more than several minutes.

............

INFO: All external dependencies fetched successfully.

Configuration finished

bazel build -c opt --config=cuda //tensorflow/cc:tutorials_example_trainer
bazel build -c opt --config=cuda //tensorflow/tools/pip_package:build_pip_package
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
pip install /tmp/tensorflow_pkg/tensorflow-0.6.0-py2-none-any.whl

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #000000; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures} p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #000000; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures} p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #000000; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures} p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #000000; background-color: #fef49c} span.s1 {font-variant-ligatures: no-common-ligatures}
