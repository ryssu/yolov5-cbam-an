#!/usr/bin/env bash
source "../.venv/bin/activate" #Omit if using local python evnironment, replace directory on you venv

#Use relative cd commands for easier navigation
#P2 Models use more resource for better small-object detection (has possible accuracy improvements)
#P2 models are not properly anchored, I don't know how.

#Base
#python3 train.py --img 640 --batch 16 --epochs 10 --data ../datasets/stage5/stage5.yaml --cfg models/yolov5-p2.yaml --weights ../results/exp-p2/weights/best.pt --hyp hyp.yaml
#CBAM
python3 train.py --img 640 --batch 16 --epochs 12 --data ../datasets/stage5/stage5.yaml --cfg models/yolov5m-cbam.yaml --weights ../results/cbam-p2-s3-new/weights/best.pt --hyp hyp.yaml
#AN
#python3 train.py --img 640 --batch 16 --epochs 8 --data ../datasets/stage1/stage1.yaml --cfg models/yolov5m-an.yaml --weights yolov5m.pt --hyp hyp.yaml
#AN/CBAM
#python3 train.py --img 640 --batch 16 --epochs 8 --data ../datasets/stage1/stage1.yaml --cfg models/yolov5-p2-an-cbam.yaml --weights yolov5m.pt --hyp hyp.yaml

