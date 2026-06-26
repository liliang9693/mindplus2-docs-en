# Python Block Mode

In the [**Model Training Inference Library**](ModelTrainingAndInferenceLibrary.md) of **Python Block Mode**, models trained in the AI Toolbox can be deployed on Linux hardware such as the UNIHIKER M10. ONNX models are invoked via drag-and-drop blocks, balancing ease of use with flexibility:

| Module                                 | Input                  | Output                              | Typical Use Case                              |
| -------------------------------------- | ---------------------- | ----------------------------------- | --------------------------------------------- |
| **Image Classification**         | Image / Camera         | Category label + Confidence         | Expression recognition, object classification |
| **Object Detection**             | Image / Camera         | Target position + Label + Count     | Product detection, people counting            |
| **Instance Segmentation**        | Image / Camera         | Pixel-level mask + Label            | Defect detection, image segmentation          |
| **Temporal Pattern Recognition** | Continuous sensor data | Pattern category label + Confidence | Motion recognition, gesture detection         |
