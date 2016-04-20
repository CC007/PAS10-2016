#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Image
from img_manip.srv import *
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy

##convert from sensor_msg format to opencv format (Numpy)
#use brgr8 if its a color image
def convert_image_cv(data, enc_type = "rgb8"):#bgr8, check encoding!
    try:
        cv_image = bridge.imgmsg_to_cv2(data, enc_type)
        #cv_image_toshow = numpy.asarray(cv_image)
        #cv2.imshow("Camera image", cv_image_toshow)
        #cv2.waitKey(1)
    except CvBridgeError, e:
        print e
    return cv_image
    
#convert from opencv format to sensor_msg format (Numpy)
def convert_image_ros(data, enc_type = "8UC1"):
    #use type = "8UC1" for grayscale images
    try:
        ros_image = bridge.cv2_to_imgmsg(data, enc_type) 
    except CvBridgeError, e:
        print e
    return ros_image

#we assume the requirement is correctly passed to this function
def conversion(req):
    #to cv img
    req_cv = convert_image_cv(req.img_rgb)
    
    #grayscale
    print "converting .. "
    gray_cv = cv2.cvtColor(req_cv, cv2.COLOR_RGB2GRAY )
    print "done converting"
    
    #to ros img and return
    gray = convert_image_ros(gray_cv)
    #req.img_gray = gray

    return rgb2grayResponse(gray)
    

def conversion_server():
    rospy.init_node('conversion_server')
    s = rospy.Service('gray_conversion', rgb2gray, conversion)
    print "Ready to convert an image."
    rospy.spin()
    
if __name__ == '__main__':
    bridge = CvBridge()
    conversion_server()
