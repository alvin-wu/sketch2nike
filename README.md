# sketch2nike
Imagine being able to sketch a design of a Nike shoe (or any design) and being able to generate infinite possibilities for what the final product will look like. This is the potential power of generative adversarial networks. 

This repository contains a pix2pix implementation based off of work by Phillip Isola et al. using Keras specifically trained using Nike shoe images. 

# Contents
data_extractor.ipynb - Hacky scripts for preprocessing data. In the case of sketch2nike, this consists of extracting the Nike Athletic Shoe images from the Zappos50k dataset and saving the images in the appropriate folder.

edge2nike.ipynb - Keras implementation of pix2pix. Main code that trains the neural network and generates shoe images. 

edge_extractor.m - Matlab script that takes each shoe image and extracts the edges using a Canny edge detector. 

# Results
![alt text](https://github.com/alvin-wu/sketch2nike/blob/master/nike_generated.PNG)

Each of the six results shown above consist of three images: the sketch/edge image, the original image, and the generated image (from left to right). 

## Citation
If you use this code, please cite the paper this code is based on: <a href="https://arxiv.org/pdf/1611.07004v1.pdf">Image-to-Image Translation Using Conditional Adversarial Networks</a>:

```
@article{pix2pix2016,
  title={Image-to-Image Translation with Conditional Adversarial Networks},
  author={Isola, Phillip and Zhu, Jun-Yan and Zhou, Tinghui and Efros, Alexei A},
  journal={arxiv},
  year={2016}
}
```

