#!/bin/bash

# https://takmin.hatenablog.com/entry/2019/12/15/000830

MOV_FILE="/root/raspi_stream/record/imu-calib-timestamp/record_vidacc_stream-0000.mp4"
ACC_FILE="/root/raspi_stream/record/imu-calib-timestamp/record_vidacc_stream-0000-acc.txt"
TIME_FILE="/root/raspi_stream/record/imu-calib-timestamp/record_vidacc_stream-0000-time.txt"
BAG_FILE="/root/raspi_stream/record/imu-calib-timestamp/record_vidacc_stream-0000.rosbag"

TARGET_YAML="/root/raspi_stream/record/imu-calib-timestamp/target.yaml"

# python kalibr_bagcreater_mov --mov $MOV_FILE --acc $ACC_FILE --time $TIME_FILE --output-bag $BAG_FILE

# python kalibr_calibrate_cameras --bag $BAG_FILE --models ds-none --target $TARGET_YAML --topics /cam0/image_raw
# mv #camchain txt
# mv #result txt

CAMCHAIN_FILE="/root/raspi_stream/record/imu-calib-timestamp/camchain-record_vidacc_stream-0000.rosbag.yaml"
IMU_FILE="/root/raspi_stream/record/imu-calib-timestamp/imu.yaml"

# https://github.com/ethz-asl/kalibr/issues/232s
# https://github.com/ethz-asl/kalibr/issues/41
# python kalibr_calibrate_imu_camera --bag $BAG_FILE --cam $CAMCHAIN_FILE --imu $IMU_FILE --target $TARGET_YAML
python kalibr_calibrate_imu_camera --bag $BAG_FILE --cam $CAMCHAIN_FILE --imu $IMU_FILE --target $TARGET_YAML --timeoffset-padding 0.3
# mv #result txt
