#!/bin/bash
cd
mkdir -p  object_detection/networks/fasterrcnn/dependency
mkdir -p object_detection/networks/fasterrcnn/model
apt-get update
apt-get install -y wget
cd object_detection/networks/fasterrcnn/dependency
wget https://github.com/onnx/models/blob/master/vision/object_detection_segmentation/faster-rcnn/dependencies/coco_classes.txt
cd
cd object_detection/networks/fasterrcnn/model
wget https://github.com/onnx/models/blob/master/vision/object_detection_segmentation/faster-rcnn/model/FasterRCNN-10.onnx
cd
echo added a default network, name is fasterrcnn, please use this name as an input for the detection script
