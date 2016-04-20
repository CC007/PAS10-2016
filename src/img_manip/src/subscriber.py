#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Image
from img_manip.srv import *
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy
from rgb2grayscale import *

def convert_gray(data, enc_type = "8UC1"):#8UC1 for grayscale
    try:
        cv_image = bridge.imgmsg_to_cv2(data, enc_type)
        cv_image_toshow = numpy.asarray(cv_image)
        cv2.imshow("Gray", cv_image_toshow)
        cv2.waitKey(1)
    except CvBridgeError, e:
        print e
    return cv_image

def convert_rgb(data, enc_type = "bgr8"):#bgr8 for colour
    try:
        cv_image = bridge.imgmsg_to_cv2(data, enc_type)
        cv_image_toshow = numpy.asarray(cv_image)
        cv2.imshow("Colour", cv_image_toshow)
        cv2.waitKey(1)
    except CvBridgeError, e:
        print e
    return cv_image



def listener():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("/img_manip/result_gray", Image, convert_gray)
    rospy.Subscriber("/camera/rgb/image_raw", Image, convert_rgb)


    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    bridge = CvBridge()
    print "console initialized"
    listener()
