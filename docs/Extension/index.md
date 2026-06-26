# Extension

The Mind+ Extension Library provides functional extensions for various programming modes. By loading these libraries, users gain dedicated building blocks tailored to each mode, enabling rapid implementation of advanced features such as hardware control, AI inference, and IoT communication without writing underlying code from scratch.

Based on programming patterns, the extension library is divided into three major categories, each corresponding to distinct runtime environments and application scenarios:

| mode              | runtime environment                            | Extended Library Types               | Core Focus                                                                                     | Typical Hardware                                       |
| ----------------- | ---------------------------------------------- | ------------------------------------ | ---------------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| [RealTime Mode](RealTimeMode/index.md)     | Computer Local                                 | Stage Expansion                      | Pure software interaction, teaching demonstrations, and rapid verification                     | None (does not use computer camera or computing power) |
| [Upload Mode](UploadMode/index.md)        | The main control board operates independently. | Module Extension                     | Hardware drivers and embedded deployment, independent of computers                             | Products such as Arduino and UNIHIKER K10              |
| [Python Block Mode](PythonBlockMode/index.md)  | Linux hardware                                 | Model Training and Inference Library | AI model deployment that balances the ease of use of building blocks with Python's flexibility | UNIHIKER M10                                           |

## In terms of AI capabilities:

The realTime AI model inference library offers six core capabilities: image classification, object detection, instance segmentation, pose classification, speech classification, and text classification. With simple drag-and-drop operations, it enables instant camera-based inference, making it ideal for  classroom demonstrations and rapid prototyping.

The time-series pattern recognition library in upload mode enables deployment of trained models onto the UNIHIKER K10 for independent inference on continuous sensor data, making it ideal for embedded AI applications.

The model training and inference library built on the Python Building Block pattern supports loading AI models in ONNX format, enabling tasks such as image classification, object detection, instance segmentation, and temporal recognition through a unified inference interface—making it ideal for AI applications requiring substantial computational power.
