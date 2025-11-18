## 1. Function Overview

**Model Deploy** involves exporting a trained and validated model from the Mind+ **Model** tool and running it on target hardware to perform model inference. Through deployment, the model can process data collected by cameras or sensors in real time, generate recognition results, and drive hardware devices or intelligent interactive systems, realizing practical AI applications.

Models can be deployed to various hardware devices (such as PCs, edge computing terminals, or other compatible devices). Here, we will focus on deployment and inference on the **UNIHIKER M10**, demonstrating the complete workflow of applying a model on an end device.

![img](../img/4_model_deployment/1761634295987-94af6353-97c8-4486-9d3f-5ff61cddacb8.png)

## 2. Model Inference Explanation  

- **Model Inference:** Refers to the process in which a trained model, after deployment, processes new input data and generates prediction results. Unlike the training phase, inference does not update parameters; it only performs computation and prediction.
- **Inference Application:** Uses the results of model inference in real-world scenarios, such as automatic sorting of premium apples, facial expression recognition, or automatic pricing after product identification.

## 3. Deployment Methods  

- **Local Inference:** Run the model directly on target devices (e.g., **UNIHIKER M10**) to perform real-time inference on camera or sensor data.
- **Result-Driven Applications:** Control fans, servos, pumps, lights, or other peripherals based on model inference output to enable intelligent interaction or automated operations.

## 4. Application Value  

- **Edge Inference:** Perform model computation locally on the **UNIHIKER M10** without relying on the cloud, ensuring fast and stable response.
- **Practical AI Applications:** Directly drive hardware through inference results, enabling scenarios like gesture control, facial expression recognition, and object detection.
- **Teaching & Practice:** Demonstrates the complete workflow from model training and deployment to inference application, helping users understand AI applications in real life.

## 5. Operation Workflow  

**Note:** The following **Operation Workflow** mainly applies to exporting, inferring, and applying a model after its validation results meet expectations. For detailed steps on **Model** training, please refer to the corresponding **Model Operation Guide**.

###  5.1 Export Model  

- Once the model’s validation results meet expectations, the model files can be exported (using the model in **Quick Start** as an example). Click **Export Model** to export the model as an ONNX file and a YAML configuration file, select the save location, and complete the export process.

- - **ONNX File:** Used for model deployment and inference.
  - **YAML Configuration File:** Records model parameters and deployment settings.

![img](../img/4_model_deployment/1761639290414-cf1e9ec5-1520-4b76-9164-44356c2f593b.png)

It is recommended to save the entire Model project as a project file for later optimization or adjustment:  

- Open the “Quick Experience” menu and select “Save Project”.
- Choose the save path and click “Confirm”.
- Later, you can reopen the saved project file through “Quick Experience” → “Open Project”.  

![img](../img/4_model_deployment/1761640813249-af1bc32d-d8cc-42b0-8e20-a7617b44366c.png)

### 5.2 Taking the UNIHIKER M10 as an example

#### **5.2.1 Hardware Preparation**

- Hardware List  

| ![img](../img/4_model_deployment/1761628510806-5bd9820a-31f4-42fb-bc78-0f1b85bf6cdd.png) | ![img](../img/4_model_deployment/1761628510921-58f8d649-ebf9-4729-b2c7-622e888e2928.png) | ![img](../img/4_model_deployment/1761628511410-bae76cca-129a-41e4-9cc9-c92ad4c19073.png) |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [行空板M10（系统版本：0.4.1）](https://www.dfrobot.com.cn/goods-3404.html) | [USB摄像头](https://www.dfrobot.com.cn/goods-2847.html)      | [USB数据线](https://www.dfrobot.com.cn/goods-2977.html)      |

- Hardware Connection  

- - Please refer to the connection diagram below to connect the computer, UNIHIKER M10, and USB camera:

![img](../img/4_model_deployment/1761628511545-2201c7f7-3ad5-4410-b39b-4c3ea12ebde0.png)

#### 5.2.2 Programming Environment and Extension Preparation  

-  Create a new Program Design project: In Program Design, select **“Python Block Mode”**.  

![img](../img/4_model_deployment/1761641173322-7d4869ae-6df8-4dac-b99c-dcd036e98c2f.png)

- Add Main Controller: Click **Extension**, enter “UNIHIKER” in the search box, and click the **Download** button on the expansion board. After the download is complete, click the extension package to finish loading, then click **Back** to return to the coding interface.  

![img](../img/4_model_deployment/1761641707553-18712296-70d4-4522-9315-ed02e923d727.png)

-  Connect the Terminal Device: In the terminal connection options, select **“Default-10.1.2.3”** to connect the UNIHIKER M10.  

![img](../img/4_model_deployment/1761641986784-507ce582-5ff6-4966-b752-1a0f48212eb1.png)

- **UNIHIKER M10 network configuration:** Since the dependent libraries need to be downloaded onto the UNIHIKER M10, you must first connect the board to a network.

![img](../img/4_model_deployment/1761716656266-1cf9f634-2e48-4d6d-a6de-2160aa41f09a.png)

- **Add Model Training User Library:** Click “Extensions,” enter “Model Training” in the search box, and click the “Download” button on the library. After the download is complete, click the extension package to finish loading, then click “Return” to go back to the coding interface.  

![img](../img/4_model_deployment/1761717057262-679c475f-0e21-428e-a09d-e4c287febe1e.png)

#### 5.2.3 Model Inference and Application  

- Upload Model  

Upload the exported ONNX file and YAML configuration file to the target environment or hardware platform.
This project is implemented based on the model trained and exported in the **Quick Start** example.  

![img](../img/4_model_deployment/1761717588361-804f189d-89e3-4d83-9413-c43e6726227b.png)

- Programming  

When a happy expression is recognized, display the corresponding happy image and prompt text on the UNIHIKER M10 screen; when an angry expression is recognized, display the angry expression and corresponding prompt text.

Write a program to call the model for inference according to the actual application requirements.  

![img](../img/4_model_deployment/1761628513021-dc20fe16-be98-4446-ac02-0833cd812f0d.png)

- Run and Validate

| The Image Classification result is: Happy                    | The Image Classification result is: Angre                    |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![img](../img/4_model_deployment/1761628513198-1b1ff93b-5ab8-45aa-b46f-99ac03f34622.png) | ![img](../img/4_model_deployment/1761628513149-774af88a-09d5-4e0e-adb6-d78eec41a981.png) |

## 6. More Model Deployment and Inference Application Cases

| Related Model        | Application Case                                             | Case Description                                             |
| -------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Object Detection     | Automatic Product Detection and Pricing Device               | This project uses object detection technology to automatically recognize and price products. The system captures real-time images of items on shelves or in shopping baskets through a camera, identifies each product’s category and location using a trained detection model, and calculates the total price based on product information. |
| Image Classification | [Emotion Recognition Driving Companion](https://h7dvigefi0.feishu.cn/drive/folder/E0zXfpt63lghKpdKceoc5NWanJe) | This project leverages image classification to provide interactive responses based on real-time facial expressions. When the driver shows an angry expression, the system gently reminds, “Don’t be upset, take it easy.” When the driver smiles, it cheerfully responds, “Let’s sing together!”, creating a relaxed and enjoyable driving experience. |