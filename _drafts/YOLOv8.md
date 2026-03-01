#byUkiDLucas #Blogger #public
#tag/ai

title: YOLOv8
published: 2023-11-11
source: https://ukidlucas.blogspot.com/2023/11/yolov8.html

In this post, I would like to describe the architecture of YOLOv8 from first principles.

Overview

Object classification using bounding boxes
The YOLO algorithm does object classification using bounding boxes.

YOLO uses boxes instead of more natural polygons because they allow the network to represent object locations with just 4 numbers, making computation more efficient and consistent across all grid cells. Polygons would require a variable number of points per object, complicating tensor shapes and slowing training and inference. Boxes are also easier to label, faster to process, and accurate enough for most real-time detection tasks that aim to locate and classify, not to outline exact shapes.

Image preprocessing and input tensor formation
The YOLO algorithm begins with a standard RGB image, typically captured in an 8-bit-per-channel format.
Each pixel’s three color values are first normalized from 0–255 to 0–1, which keeps numerical values small enough for the optimizer to adjust weights effectively.
The image is then resized to a fixed square dimension, such as 640×640, preserving the aspect ratio by adding gray padding (letterboxing) when needed. This keeps every image in a batch at the same height and width, so they can be stacked into a single tensor and processed together by the network.
Finally, the normalized and resized image is reordered from the height-width-channel (HWC) layout to the channel-height-width (CHW) layout, forming a contiguous tensor of shape [3, H, W]. This tensor serves as the model’s input layer, with each of the three planes corresponding to the red, green, and blue channels, which the convolutional filters process in parallel to extract spatial and color features.

What is a tensor?

A tensor is a structured container for numbers with many dimensions. A single number is called a rank-0 scalar, a list is a rank-1 vector, a table is a rank-2 matrix, and an image with multiple color channels is a three-dimensional rank-3 tensor. Each dimension represents an axis, such as height, width, or color channels. Tensors enable the network to perform mathematical operations on entire blocks of data at once, which is why they are efficient for training and running deep learning models on GPUs.

Additional input dimensions

In some systems, more channels can be added to the RGB input to provide extra information. An alpha channel can represent transparency, creating an RGBA image where each pixel holds red, green, blue, and opacity values. A depth channel can store distance information, which is helpful in applications that combine vision with LiDAR or stereo sensors. These additional channels simply expand the tensor’s channel dimension, for example, from [3, H, W] to [4, H, W] or [5, H, W]. The network can then be trained or fine-tuned to interpret these extra inputs as part of its feature extraction process.

Feature extraction backbone

After the input tensor is formed, YOLOv8 passes it through the backbone, a sequence of convolutional layers (CNN) that gradually transform raw pixel values into abstract features.
Early layers detect simple patterns such as edges and colors, while deeper layers capture shapes and object parts.

In YOLOv8, the backbone is a sequence of convolutional layers organized into repeating modules rather than a single long stack. It contains roughly 50–70 layers, depending on the model size (n, s, m, l, or x). These layers are grouped into functional blocks, each performing a specific transformation.

Initial convolution

The first layer expands the 3-channel RGB input into a larger set of feature maps (e.g., 32 or 64 channels) using a 3×3 kernel and stride 2, effectively halving the spatial resolution. This captures low-level textures, such as edges and corners.

C2f modules

These are improved versions of the CSP (Cross Stage Partial) blocks used in earlier YOLO versions. Each C2f module consists of several smaller convolutional layers connected by skip paths. The idea is to allow part of the feature map to bypass heavy computation, which improves gradient flow and efficiency.

Downsampling layers

Between major C2f blocks, 3×3 convolutions with stride 2 reduce the width and height of the feature maps while increasing the number of channels. This concentrates information and allows the network to detect objects of different sizes.

Batch normalization and activation

After each convolution, YOLOv8 applies batch normalization to stabilize training and SiLU (Sigmoid Linear Unit) activation to introduce nonlinearity. SiLU helps the network learn smooth transitions and often outperforms ReLU in detection tasks.

SPPF (Spatial Pyramid Pooling Fast)

At the end of the backbone, a special pooling block combines features from multiple receptive fields using different kernel sizes. This helps the network recognize objects at various scales before passing data to the neck.

The backbone produces a set of multi-scale feature maps (often at three resolutions, such as 80×80, 40×40, and 20×20) that encode both fine detail and high-level semantic information for the next stage, the neck.

The backbone reduces spatial resolution while increasing channel depth, trading image detail for semantic richness.
YOLOv8 uses a variant of the CSP (Cross Stage Partial) architecture with C2f modules, which balance accuracy and efficiency by allowing part of the feature map to bypass heavy computation.
The backbone produces a set of feature maps at multiple scales, ready to be fused by the next stage, the neck.
