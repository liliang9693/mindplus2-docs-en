# Model Training and Inference Library

This document will explain how to use the model training and inference library in Python mode within the Mind+ programming software to load and apply models you have trained yourself in the Mind+ model training module, and how to build a complete AI project application in conjunction with a host device (such as the UNIHIKER M10).

Using this library, users can deploy their self-trained image and time-series models to real hardware environments to implement a variety of AI applications—including image classification, object detection, instance segmentation, and Temporal Pattern Recognition—and complete the entire practical workflow from model training to project deployment.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782114890238.png)

# Feature Overview

Using the model training and inference library, users can load image classification models, object detection models, instance segmentation models, and temporal pattern recognition models that have been trained in the Mind+ model training module. In the Python mode of the Mind+ programming software, they can perform inference and analysis on input data and obtain corresponding recognition results, such as category IDs, label names, confidence scores, and segmentation results.

Using this library, users can not only quickly apply their self-trained models to real-world projects—such as image classification, object detection, instance segmentation, and temporal pattern recognition—but also intuitively understand and experience the entire application workflow, from data input and model inference to result output. Through visualized inference results and interaction with real hardware, it helps students understand the fundamental principles and practical applications of artificial intelligence.

## Preparations

### Hardware Preparation

* a computer
* A webcam (either the one built into your computer or a USB webcam)

### Software Preparation

![img](https://mindplus.dfrobot.com.cn/mp2/realtime-ext-docs/docs/Stage/ext-DFRobot-realtimeAiInference/image-classification.assets/1767691838809-315fea06-9f14-4310-9aa8-733d3aad57cd.png)

Install Mind+ version 2.0.4 or later. Click here to view the Mind+ installation guide. For instructions on how to check your software version, see the FAQ.

## Model Preparation

Before creating an AI project using the model training and inference library, you must first train and export the corresponding model in the Mind+ Model Training module.

Users can train models using the various functional modules in the Mind+ model training module—such as image classification, object detection, instance segmentation, and temporal pattern recognition—depending on the project type.

Once model training is complete, please export the model. The exported model file is a compressed archive with a .zip extension.

Unzip the archive. In subsequent projects, you will use the `best.onnx` and `data.yaml` files contained within the archive to perform inference and analysis on image data captured by a camera or time-series data collected by sensors, thereby enabling AI applications such as image classification, object detection, instance segmentation, and time-series pattern recognition.

Please refer to the following tutorial to prepare the appropriate models in advance for use in future projects:

[Tutorial on Training and Exporting Image Classification Models ](../../AITools/Detailed_explanation/image_classification/quick_experience/quick-experience.md)

[Tutorial on Training and Exporting Object Detection Models](../../AITools/Detailed_explanation/object_detection/quick_experience/quick-experience.md)

[Tutorial on Training and Exporting Instance Segmentation Models ](../../AITools/Detailed_explanation/instance_segmentation/quick_experience/quick-experience.md)

[Tutorial on Training and Exporting Time-Series Pattern Recognition Models](../../AITools/Detailed_explanation/time_series_recognition/quick_experience/quick-experience.md)

# Loading the Model Training and Inference Library

This library requires Python version 3.12.7. This model training and inference library has no mandatory hardware platform dependencies and can essentially run in any Python environment that meets the requirements.

If you want to use this library in conjunction with UNIHIKER M10, please refer directly to: How to Use the Model Training and Inference Library with UNIHIKER M10.

If you are using this library solely on a computer or in conjunction with other control hardware, please configure your Python 3.12.7 environment yourself.

Next, we’ll explain how to load this library in Mind+ version 2.0.4 or later.

Open Mind+ version 2.0.4 or later, and click to enter Python mode.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782115376818.png)

In Python mode, click "Extensions" in the lower-left corner, search for "Model Training and Inference Library" in the search box, and click "Load this library."

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782115450133.png)

Once loading is complete, return to the Python programming page. Click "Model Training and Inference" to find the blocks for this library, as shown below.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782115523318.png)

If you are connected to the internet, the required dependencies will be automatically downloaded and installed when you load this library. If you receive an installation failure message, as shown in the figure below, it may be due to an incompatible Python version. Please check whether your system’s Python version is 3.12.7.

![img](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1768471868281-99bbc39b-3df8-48c1-8b7e-afa3e48ddad2.png)

## How to Use the Model Training and Inference Library with UNIHIKER M10

The UNIHIKER M10 (system version 0.4.1) comes with a preconfigured and optimized Python environment capable of running this library. If you wish to use this library with the Xingkong Board M10, please follow the tutorial below to load the library.

For instructions on how to check the UNIHIKER M10 system version and update the firmware, see the [FAQ](#frequently-asked-questions) at the end of this document.

**(1) Load the UNIHIKER M10**

Connect the UNIHIKER M10 to your computer via USB, open the Mind+ programming software, and select Python mode under “Programming.”

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782115735048.png)

Click "Extensions" in the lower-left corner to go to the Extensions page, search for "UNIHIKER," download the "UNIHIKER M10" library, and click "Load."

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782115837355.png)

**(2) Switch Python versions**

Return to the programming page, select "Default-10.1.2.3" from the terminal connection options, and wait for the connection to the UNIHIKER M10 to succeed.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782116440532.png)

In the terminal, type: `python --version`, then press Enter to check the Python version on the M10 board. See the image below.

![](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1768529779074-f344b4d1-d0fd-4eea-8ef8-f56bc2193b97.png)

If you are not using Python version 3.12.7, enter the following command:

`pyenv global 3.12.7`

to switch to Python version 3.12.7. Once the switch is complete, you can use the command mentioned earlier to check your current Python version.

Note: If you see the message “pyenv: command not found,” it means that pyenv is not included in the current UNIHIKER system firmware. Please first upgrade to the latest system following the instructions in the UNIHIKER M10 tutorial: Click here to view the upgrade tutorial

![](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1768529928120-5fb81c7b-3cf6-4e54-a2f1-6d37e6bd1ad8.png)

**(3) Load the model training and inference library**

Once the environment is set up, you can load the Model Training and Inference Library. Click "Extensions," search for "Model Training and Inference Library" in the search box, and click "Load this library."

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782116927421.png)

Once loading is complete, return to the Python programming page. Click "Model Training and Inference" to find the blocks for this library, as shown below.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782117013191.png)

# Usage Instructions

The Model Training and Inference Library provides a set of general-purpose, composable workflows for model inference, enabling the rapid deployment of various types of AI models—such as image classification, object detection, instance segmentation, and temporal pattern recognition—into real-world projects.

When using a model training and inference library, the overall process can be summarized as follows:

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782117782675.png)

## Module Descriptions

**(1) Data Entry**

The data input module is used to provide the input data required for model inference. Depending on the project type, the input data can take the following forms:

Image Data: Used for image recognition projects. Includes: local image files; real-time images from cameras; RTSP network video streams.

Users can select appropriate data sources as inputs for model inference based on the specific project requirements. The model training and inference library does not require the use of the data input modules provided by this library. As long as the input data type is correct and the format meets the model’s requirements, it can be used as input for inference.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782118378881.png)

**(2) Common Display**

The Common Display Module is used to display image data. In addition to the image display blocks provided by this library, users can utilize display-related blocks from other libraries—such as OpenCV or UNIHIKER M10—based on their project requirements.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782118539842.png)

**(3) General Reasoning**

The General Inference Module is the core module of the model training and inference library, unifying the inference execution methods for different types of models. Users can use this module to load models and perform inference, obtaining the raw inference result data output by the model.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782118588980.png)

**(4) Formatted Output**

The formatted output module is used to convert the model’s raw inference results into standard data that can be directly used for program logic control, decision-making, and display. The inference results vary depending on the model type.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782118674810.png)

# Image Recognition Projects

In the following section, we will use examples to demonstrate how to use the UNIHIKER M10 in conjunction with a USB camera to deploy image recognition models, perform inference on real-time video captured by the camera, and complete image-related AI projects such as image classification and object detection.

## Hardware Preparation

| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119208619.png) | ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119213513.png) | ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119218647.png) | ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119223047.png) |
| :-----------------------------------------------------------------------------------------------------------------------------: | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
|                                                            Computer                                                            | [UNIHIKER M10 (System Version: 0.4.1)](https://www.dfrobot.com/product-2691.html)                                                  | [USB Cable](https://www.dfrobot.com/product-2171.html)                                                                             | [USB Camera](https://www.dfrobot.com/product-2089.html)                                                                            |

## Wiring Diagram

Please refer to the connection diagram below to connect the computer, the UNIHIKER M10, and the USB camera.

![img](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1768465845698-17ad4c98-bc83-4797-aa61-487145a03b73.png)

### Image Classification Example—Cat and Dog Classification

This example demonstrates how to use the UNIHIKER M10 to deploy a self-trained cat-and-dog image classification model, perform inference on real-time video captured by a camera to classify cats and dogs, and display the recognition results on the UNIHIKER M10.

In this example, the sample model used is a cat-and-dog image classification model. In practice, you can replace the sample model with an image classification model that you have trained yourself or an existing one, while keeping the rest of the code flow the same.

### Sample Program

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782121435099.png)

### Uploading Model Files

To use an image classification model, you need to upload the model files. Click "Assets," select "Upload Files," locate the folder containing the exported and unzipped image classification model, select the ONNX and YAML files, click "Open," and complete the model upload.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782181243194.png)

### Runtime Results

After running the program, observe the real-time video feed captured by the camera on the UNIHIKER M10 screen. Point the camera at the image to be classified, follow the on-screen prompts, press the A key, and observe the labels and confidence scores in the image classification model inference results displayed on the UNIHIKER M10.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782291870729.gif)

Search results related to terminal printing.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782294747294.png)

### Object Detection Example—Traffic Sign Detection

This example demonstrates how to use the UNIHIKER M10 to deploy a self-trained traffic sign object detection model, perform inference on real-time video captured by a camera, detect and annotate traffic signs appearing in the video in real time, and output the object detection results.

In this example, the model used is a traffic sign object detection model (which can recognize four types of traffic signs: “Turn Left,” “Turn Right,” “Go,” and “Stop”).

![img](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1767770301371-df0c5791-096e-4b31-9dcf-eec9b16e5845.jpeg)

In practice, you can replace the example model with a target detection model that you have trained yourself or one you already have, while keeping the rest of the code flow the same.

### Sample Program

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782181061142.png)

### Uploading Model Files

To use an Object Detection model, you need to upload the model files. Click "Assets," select "Upload Files," locate the folder containing the exported and unzipped image classification model, select the ONNX and YAML files, click "Open," and complete the model upload.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782181238044.png)

### Runtime Results

After running the program, observe the UNIHIKER M10 screen displaying the real-time camera feed. Traffic signs in the frame are highlighted in real-time with bounding boxes, labels, and confidence values.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782291102253.gif)

Examine the relevant data for each flag detected by the terminal printer.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782294595950.png)

### Example of Instance Segmentation—Flower Instance Segmentation

This example demonstrates how to use the UNIHIKER M10 to deploy a self-trained flower instance segmentation model and perform inference on images captured by a camera. It boxes the flower instances appearing in the images, marks their outlines, and outputs instance segmentation-related data.

In this example, the model used is a flower instance segmentation model (which can recognize various types of flowers and draw their outlines).

![img](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1767842435077-dc9b5a27-af95-4b4f-8e97-9be3584bf756.jpeg)

In practice, you can replace the example model with a model you’ve trained yourself or an existing instance segmentation model, while keeping the rest of the code flow the same.

### Sample Program

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782182564022.png)

### Uploading Model Files

To use an Object Detection model, you need to upload the model files. Click "Assets," select "Upload Files," locate the folder containing the exported and unzipped image classification model, select the ONNX and YAML files, click "Open," and complete the model upload.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782181238044.png)

### Runtime Results

After running the program, observe the real-time video feed from the camera displayed on the UNIHIKER M10 screen. Press the A key to perform an instance segmentation inference task, which identifies instances of flowers appearing in the video and marks their outlines within one second.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782292243264.gif)

The terminal prints the segmentation inference results.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782292076204.png)

You can find the saved images of the extracted flower outlines in the corresponding program directory for UNIHIKER M10.

![img](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1768554344586-e032de48-ad60-4d51-8658-27885018c5b4.png)

### Timeporal Pattern Recognition Projects

## Hardware Preparation

| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119208619.png) | ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119213513.png) | ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119218647.png) | ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782119223047.png) |
| :-----------------------------------------------------------------------------------------------------------------------------: | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
|                                                            Computer                                                            | [UNIHIKER M10 (System Version: 0.4.1)](https://www.dfrobot.com/product-2691.html)                                                  | [USB Cable](https://www.dfrobot.com/product-2171.html)                                                                             | [USB Camera](https://www.dfrobot.com/product-2089.html)                                                                            |

## Wiring Diagram

Please refer to the connection diagram below to connect the computer, the UNIHIKER M10, and the USB camera.

![img](https://mindplus.dfrobot.com.cn/mp2/python-block-ext-docs/docs/extensions/ext-DFRobot-aiInference/readme.assets/1768465845698-17ad4c98-bc83-4797-aa61-487145a03b73.png)

### Example of Temporal Pattern Recognition—Action Recognition

This project demonstrates how to use a pre-trained temporal pattern recognition model to analyze continuous data collected by the UNIHIKER M10 accelerometer, extract label data from the inference results, and perform motion recognition.

In this example, the model used is a temporal pattern recognition model capable of distinguishing between three states: clapping, tapping, and silence.

In practice, you can replace the example model with a model you’ve trained yourself or an existing time-series data recognition model, while keeping the rest of the code flow the same. For common questions about time-series pattern recognition, see the FAQ at the end of the documentation.

### Sample Program

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782294099643.png)

To use an temporal pattern recognition model, you need to upload the model files. Click "Assets," select "Upload Files," locate the folder containing the exported and unzipped image classification model, select the ONNX and YAML files, click "Open," and complete the model upload.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782181238044.png)

### Runtime Results

fter the program has finished uploading, press and hold the A button on the UNIHIKER M10 with one hand while performing a clapping or tapping gesture. Maintain the gesture for approximately 5 to 10 seconds. Then release the A button. Observe the recognized action label, category ID, and corresponding confidence score displayed on the screen. Repeat the above steps to perform a new round of action recognition.

![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782294157485.gif)

# Block Instructions

| Data Input Blocks                                                                                                               | Feature Description                                                                                                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184365105.png) | Create an image reader object to load image data from a specified local image file for use in the inference of an image recognition model.                                                                                 |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184372636.png) | Create an image reader object to capture real-time video data from the camera and provide input for inference by the image recognition model class.                                                                        |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184378679.png) | Create an image reader object, connect to a network camera or video stream via the RTSP protocol, and retrieve real-time image data for use in the inference of image recognition models.                                  |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184406533.png) | Used to set the dimensions of the input image. When working on image recognition projects, the dimensions of the image input during inference should match the input dimensions of the dataset used during model training. |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184414043.png) | The image reader retrieves a single frame from the input source and stores it in the `data` variable, which is then used for model inference.                                                                            |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184444809.png) | This is commonly used to free up resources after an image recognition model has completed its inference task.                                                                                                              |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184454530.png) | Create a text reader to read plain text files.                                                                                                                                                                             |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184460511.png) | Create a text reader.                                                                                                                                                                                                      |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184468419.png) | Add new data items one by one to the text reader object. Each time this function is called, a new data item is appended to the end, with each item separated by a comma                                                    |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184475252.png) | Read a segment of text from the text reader's buffer and store it in the variable `data` for use in subsequent model inference.                                                                                          |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782184481953.png) | Clear inference task history data                                                                                                                                                                                          |

| Common Display Blocks                                                                                                           | Feature Description                                                                                                           |
| ------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782185052110.png) | Create a window that can be used to display images, camera feeds, and other information.                                      |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782185058799.png) | Adjusting the window size is typically done after the window has been created.                                                |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782185065331.png) | Closes the specified window created earlier; this is typically done when the program ends.                                    |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782185072577.png) | Display the image data stored in the\`data\` variable in the specified window.                                                |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782185079520.png) | Save the image data stored in the `data` variable as an image file with the specified name.                                 |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782185087073.png) | To determine whether a specific key has been pressed; the time specified here is the maximum wait time for each listen event. |

| General Inference Building Blocks                                                                                               | Feature Description                                                                                                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194481700.png) | Create and initialize the corresponding model inference tasks, such as image classification, object detection, instance segmentation, and temporal pattern recognition. You must specify the paths to the corresponding ONNX and YAML files for each model. |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194488543.png) | Enter the data to be inferred and perform an inference for a specified task.                                                                                                                                                                                |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194496314.png) | Retrieve the raw inference results data.                                                                                                                                                                                                                    |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194505784.png) | Plotting inference results on the original image is commonly used in tasks such as object detection and instance segmentation to display results—such as detection boxes, labels, confidence scores, and masks—directly on the original image.            |

| Formatted Output Block                                                                                                          | Feature Description                                                                                                                                                                                                                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194886843.png) | Retrieve the labels and confidence scores from the inference results of an image classification task.                                                                                                                                                                                                                                                           |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194895537.png) | Determines whether a target has been detected; returns true if detected, and false if not.                                                                                                                                                                                                                                                                      |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194901156.png) | Determines whether a target has been detected; returns true if detected, and false if not.                                                                                                                                                                                                                                                                      |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194907742.png) | Retrieve detailed information about the target with the specified index from the inference results of the object detection model, including the label, confidence score, center X coordinate, center Y coordinate, width, and height. Enter the index of the detected target you want to retrieve in the box, starting from 0.                                  |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194915382.png) | Determines whether an instance has been detected; returns true if detected, false otherwise.                                                                                                                                                                                                                                                                    |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194933446.png) | In an instance segmentation task, the IDs of the detected instances and the total number of instances in a single inference result                                                                                                                                                                                                                              |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194941175.png) | Retrieve detailed information about the instance with the specified index from the inference results of the instance segmentation model, including the label, confidence score, bounding box, X-coordinate, Y-coordinate, mask area, and mask bounding box. Enter the index of the detected instance you want to retrieve in the box, starting from 0.          |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194953746.png) | Based on the inference results of instance segmentation, configure whether to retain the mask effect on the returned inference image. Specify whether to retain or remove the mask for a particular class by entering its ID.                                                                                                                                   |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194960595.png) | Determines whether an inference result exists for a time-series pattern recognition task. If an inference result exists, return True; otherwise, return False. If False is returned, it may be because there is insufficient time-series data, resulting in no inference result. Extend the time-series data collection period and attempt the inference again. |
| ![image](./ModelTrainingAndInferenceLibrary.assets/pic_1782194966824.png) | Retrieve the inference results for a single time-series pattern recognition task. This includes the category ID, category label name, or corresponding confidence score.                                                                                                                                                                                        |

## Frequently Asked Questions

| Q | How do I check the version number of the Mind+ software?                                                                                                                                                                                                                                                                                                                                                  |
| - | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A | Open the Mind+ programming software and click the system settings icon in the upper-right corner. In the system settings panel of Mind+ version 2.0.4 and later, a new section titled "Version Updates" has been added. Click "Version Updates" to view the current version of Mind+.<br />![image](../RealTimeMode/TextClassification.assets/pic_1781774761792.png) |

**Questions Regarding the UNIHIKER M10**

| Q | How do I check if the system version of the UNIHIKER M10 is 0.4.1?                                                                                                       |
| :- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A | After powering on the UNIHIKER M10, press and hold the Home button to enter the menu. Locate “View System Information” to check the system version of the Xingkong M10. |
| Q | How do I flash version 0.4.1 of the UNIHIKER M10 firmware?                                                                                                                |
| A | UNIHIKER M10 Firmware Logs and Flashing Guide:[Click to View](https://www.unihiker.com/wiki/SystemAndConfiguration/UnihikerOS/unihiker_os_image/)                            |

**Questions Related to Instance Segmentation**

| Q | What is instance segmentation, and what does “instance” refer to here?                                                                                                                                                                                                                                                                                                                                                               |
| - | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A | Instance segmentation is a computer vision task that involves identifying and distinguishing each specific object in an image and precisely delineating the pixel regions occupied by each object. An instance refers to a specific individual within a given class.<br />In general, instance segmentation can: identify what something is, distinguish between individual instances, and draw the complete outline of each instance. |

**Issues Related to Temporal Pattern Recognition**

| Q | What is time-series data, and what is time-series pattern recognition?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| - | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A | Time-series pattern recognition refers to the use of models to analyze a continuous sequence of time-series data and identify the actions, behaviors, or patterns of change contained within it. Rather than focusing on individual data values, the model comprehensively assesses the overall characteristics of data changes over a period of time to perform recognition and classification. Time-series data refers to data collected continuously in chronological order. Unlike a single image or a single input, time-series data reflects the process of how data changes over time.<br />For example, the X, Y, and Z-axis data continuously collected by the Xingkong K10 accelerometer over a period of time constitute a time-series data set.                                                                                                                                                                                                                                                                                                         |
| Q | The trained temporal pattern recognition model is not performing well and has a low accuracy rate. How can we improve it?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| A | You can try optimizing in the following areas:<br />(1) Increase the number of training samples and retrain the model. When collecting training data, appropriately extend the duration of each data collection session to capture more complete and stable time-series features.<br />(2) When applying the model, ensure that the data input method remains consistent with that used during the training phase. For example, when conducting a project on time-series pattern recognition using accelerometers, ensure that the orientation of the K10 board is consistent and that the range of motion and execution method are uniform.<br />(3) In practical applications, appropriately extend the input duration for time-series data of the same type. For example, when working on a project involving time-series pattern recognition for accelerometers, repeat the same action for 5–10 seconds to ensure that the model has access to sufficient continuous time-series data during inference, thereby improving recognition stability and accuracy. |

# Recommended Community Projects

| Project Category              | Related Projects                                                                                                   | Project Overview                                                                                                                                                                                                                           |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Image Classification Examples | [Image Classification Based Emotion-Recognition Driving Companion](https://community.dfrobot.com/makelog-318402.html) | Using a camera and the UNIHIKER M10, the system detects the driver’s emotional state—whether they are happy, angry, or drowsy. It ensures driving safety through a three-pronged interactive approach combining text, images, and music. |
| Object Detection Examples     | [Object Detection-Based Self Checkout System ](https://community.dfrobot.com/makelog-318320.html)                     | Turn a compact UNIHIKER M10 into an AI cashier—it can use its camera to recognize products in front of it in real time, automatically label their names, highlight their locations, and quickly calculate the total price.                |
