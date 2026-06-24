# Image Classification

This document will explain how to use the "Image Classification" module in the Model Training and Inference Library under Mind+ > Programming > Real-Time Mode to apply a self-trained image classification model and complete an image classification project.

![image](./ImageClassification.assets/pic_1782264360263.gif)

## Features

Using the image classification module, users can load pre-trained image classification models to perform inference and classification on local images or camera feeds, and obtain results such as the corresponding category ID, label, and confidence score.

This allows users not only to quickly deploy their self-trained image classification models to create various image classification projects, but also to intuitively understand and experience the entire application process—from image input and model inference to result output.

## Preparations

### Hardware Preparation

* a computer
* A webcam (either the one built into your computer or a USB webcam)

### Software Preparation

![img](https://mindplus.dfrobot.com.cn/mp2/realtime-ext-docs/docs/Stage/ext-DFRobot-realtimeAiInference/image-classification.assets/1767691838809-315fea06-9f14-4310-9aa8-733d3aad57cd.png)

Install Mind+ version 2.0.4 or later. Click here to view the Mind+ installation guide. For instructions on how to check your software version, see the FAQ.

### Model Preparation

Before creating an image classification project, you must first train and export an image classification model. You can use the Image Classification module in the Mind+ V2.0 model training tool to train the model and export it for subsequent inference. The exported image classification model is a compressed file with the extension `**.zip`. In subsequent projects, you will use this compressed file directly to load the image classification model and perform inference for image classification tasks.

![img](https://mindplus.dfrobot.com.cn/mp2/realtime-ext-docs/docs/Stage/ext-DFRobot-realtimeAiInference/image-classification.assets/1767686489033-6d0f7ff8-2456-4e9e-9e5a-0b97a17b9e95.png)

Please refer to the tutorial below to set up an image classification model for use in the upcoming project.

* Tutorial on Training Image Classification Models: [Image Classification—Training the Model](../../AITools/Detailed_explanation/image_classification/quick_experience/quick-experience.md#step-3-train-model)
* Tutorial on Exporting Image Classification Models: [Image Classification - Model Export](../../AITools/Detailed_explanation/image_classification/quick_experience/quick-experience.md#step-5-model-deploy)

### Load the model training and inference library

Open Mind+ version 2.0.4 or later, and tap to enter "RealTime Mode."

![image](./ImageClassification.assets/pic_1781596295710.png)

In RealTime mode, click "Extensions" in the lower-left corner, locate "Model Training and Inference " in the Stage Extensions, and click "Load."

![image](./ImageClassification.assets/pic_1781596461576.png)

Once loading is complete, return to the RealTime programming page and click "Image Classification" under "Model Inference" to find the image classification blocks, as shown below.

![image](./ImageClassification.assets/pic_1781596576507.png)

### Usage Instructions

![image](./ImageClassification.assets/pic_1781597245603.png)

### Project 1: Local Image Classification

This project demonstrates how to use a pre-trained image classification model to recognize a local image and obtain the corresponding classification result.

In this example, the sample model used is a cat-and-dog image classification model. In practice, you can replace the sample model with an image classification model that you have trained yourself or an existing one, while keeping the rest of the code flow the same.

## Sample Program

![image](./ImageClassification.assets/pic_1781597721870.png)

## Runtime Results

After running the program, a window displaying the model's inference results will pop up, showing the confidence scores for each label. The label with the highest confidence score will be used as the final classification result for the image.

![image](./ImageClassification.assets/pic_1781600184797.gif)

## Project 2: Real-Time Image Classification Using a Camera

This project demonstrates how to use a pre-trained image classification model to continuously recognize real-time footage captured by a camera and obtain real-time image classification results.

The model used in this example is the same as the one in Project 1. You can replace it with an image classification model you’ve trained yourself or one you already have; the rest of the code remains the same.

![image](./ImageClassification.assets/pic_1782265206633.png)

## Sample Program

![image](./ImageClassification.assets/pic_1781753834469.png)

## Runtime Results

After running the program, a window displaying the model inference results will appear. Once the image classification model has finished loading, the system will continuously perform image classification inference on the real-time footage captured by the camera and display the classification results in the window in real time.

Press the Spacebar to display the image classification results for the current frame, including: the classification label with the highest confidence; the corresponding category ID; and the confidence value for that classification result.

![image](./ImageClassification.assets/pic_1782264796567.gif)

## Building Block Instructions

| Image Classification Blocks                                                                                    | Feature Description                                                                                                                                                                                                                                                                                               |
| --------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./ImageClassification.assets/pic_1781745686090.png) | Initialize the image classification task. You must run this block before using any image classification-related blocks.                                                                                                                                                                                           |
| ![image](./ImageClassification.assets/pic_1781745696639.png) | Load a pre-trained image classification model file from the local directory for use in image classification inference tasks. The image classification model here refers to a compressed model file trained and exported under the "Model Training - Image Classification" module, such as 'Experience_model.zip'. |
| ![image](./ImageClassification.assets/pic_1781745705616.png) | Perform continuous image classification inference on real-time footage captured by the camera.                                                                                                                                                                                                                    |
| ![image](./ImageClassification.assets/pic_1781745712977.png) | Stop the image classification inference for the camera feed.                                                                                                                                                                                                                                                      |
| ![image](./ImageClassification.assets/pic_1781745722840.png) | Perform an image classification inference on a specified image and display the corresponding recognition result.                                                                                                                                                                                                  |
| ![image](./ImageClassification.assets/pic_1781745730703.png) | Retrieves the confidence score corresponding to a specified category ID from the image classification results. Enter an integer starting from 0 for the ID; you can also use an\`int\` type variable.                                                                                                             |
| ![image](./ImageClassification.assets/pic_1781745737575.png) | Retrieve the classification label with the highest confidence score from the current image classification results. This is often used directly as the final image classification label.                                                                                                                           |
| ![image](./ImageClassification.assets/pic_1781745745049.png) | Retrieve the category ID corresponding to the classification with the highest confidence in the current image classification results.                                                                                                                                                                             |
| ![image](./ImageClassification.assets/pic_1781745752598.png) | Clear the currently saved image classification results.                                                                                                                                                                                                                                                           |

| Camera-related Blocks                                                                                           | Feature Description                                                                                                                                                                                                                                                                |
| --------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./ImageClassification.assets/pic_1781752352939.png) | Turn on the camera. If the image is upside down, you can enable the mirroring feature. Some computer cameras take a moment to start up, so you may want to add a few seconds of wait time at the end.                                                                              |
| ![image](./ImageClassification.assets/pic_1781752363005.png) | Switch cameras. If your computer is connected to multiple cameras, you can use this block to retrieve the feed from a specific camera. If no camera is detected, try restarting the software or use your computer's built-in camera software to check if the camera is recognized. |
| ![image](./ImageClassification.assets/pic_1781752374288.png) | To display the camera feed, you can use a pop-up window or the Object Stage.                                                                                                                                                                                                       |
| ![image](./ImageClassification.assets/pic_1781752382776.png) | When displaying a camera feed on the stage, you can use this block to adjust the transparency so that the stage background and the camera feed appear together.                                                                                                                    |
| ![image](./ImageClassification.assets/pic_1781752391619.png) | Infer the results in real time and display them on the camera feed.                                                                                                                                                                                                                |
| ![image](./ImageClassification.assets/pic_1781752399173.png) | Use the computer's webcam to take a photo and save it to a specified folder on the computer.                                                                                                                                                                                       |

## Frequently Asked Questions

| Q | How do I check the version number of the Mind+ software?                                                                                                                                                                                                                                                                                                                                                   |
| - | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A | Open the Mind+ programming software and click the system settings icon in the upper-right corner. In the system settings panel of Mind+ version 2.0.4 and later, a new section titled "Version Updates" has been added. Click "Version Updates" to view the current version of Mind+.<br />![image](./ImageClassification.assets/pic_1781753588845.png) |
