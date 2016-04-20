#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from rgb2grayscale import convert_image_cv
import cv2
import numpy



def callback(data):
    try:
		 cv_image = convert_image_cv(data)
         cv2.imshow("Image window", cv_image)
    except CvBridgeError as e:
         print(e)


def pixel_count(data):
	rospy.loginfo(rospy.get_caller_id() + "pixel count is %s", data.data)
    
def img_listener():
    # The anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('img_console', anonymous=True)

    rospy.Subscriber("rgb_img", Image, callback)
    rospy.Subscriber("grey_conversion", Image, callback)
    rospy.Subscriber("count_pixels'", Image, pixel_count)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    
    img_console()
