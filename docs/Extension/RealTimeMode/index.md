# RealTime Mode


In the **Stage Extensions** of **RealTime Mode**, the **Model Trainin gand Inference Library** provides 6 inference modules. Each requires a model `.zip` file to be trained and exported from the AI Toolbox first, then loaded in Real-Time Mode:

| Module                          | Input            | Output                          | Typical Use Case                        |
| ------------------------------- | ---------------- | ------------------------------- | --------------------------------------- |
| [**Image Classification**](ImageClassification.md)  | Image / Camera   | Category label + Confidence     | Trash sorting, object recognition       |
| [**Object Detection**](ObjectDetection.md)      | Image / Camera   | Target position + Label + Count | Traffic sign detection                  |
| [**Instance Segmentation**](InstanceSegmentation.md) | Image / Camera   | Pixel-level mask + Label        | Portrait segmentation, defect detection |
| [**Pose Classification**](PoseClassification.md)   | Image / Camera   | Body pose label                 | Sports pose recognition                 |
| [**Text Classification**](TextClassification.md)   | Text string      | Category label + Confidence     | Review sentiment analysis               |
| [**Speech Classification**](SpeechClassification.md) | Microphone audio | Audio category label            | Instrument recognition                  |
