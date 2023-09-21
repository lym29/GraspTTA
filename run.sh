#!/bin/bash
#coding = utf-8
apt-get -y install libusb-1.0-0
conda create -n grasptta python=3.8
conda activate grasptta
conda install -c open3d-admin open3d
apt-get install libsm6 libxrender1 libfontconfig1
sudo python -m pip install opencv-contrib-python

pip install pytorch fvcore chumpy addict plyfile transforms3d opencv-python==3.4.2 numpy==1.23
git clone https://github.com/facebookresearch/pytorch3d.git
cd pytorch3d && git checkout 3b035f57f08295efc9af076ea60f62ad26d88b91
pip install -e . && cd ..
git clone https://github.com/hwjiang1510/MANO.git
cd MANO && pip install -e . && cd ..
pip install pybullet sk-video trimesh rtree
python gen_diverse_grasp_ho3d.py --obj_id 3