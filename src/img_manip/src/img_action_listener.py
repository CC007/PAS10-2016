#!/usr/bin/env python
import rospy
#why import from a message file?, does it define Image?
from sensor_msgs.msg import Image#imagetype as used in service
from img_manip.srv import *#service type used



import roslib
roslib.load_manifest('img_manip')
import rospy
import actionlib
#from img_manip.msg import pixelCountAction, pixelCountGoal#action file used
from img_manip.msg import *
#use /camera/rgb/image_raw

def conversion_client(img):
    print "converting image"
    rospy.wait_for_service('gray_conversion')
    try:
        converter_proxy = rospy.ServiceProxy('gray_conversion', rgb2gray)
        gray_img = converter_proxy(img)
        return gray_img
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard an image, encoding: %s", data.encoding)
    grayimg = conversion_client(data)
    if (grayimg):
        print "i hope this works!"

    #action server related
    client = actionlib.SimpleActionClient('pixel_count', pixelCountAction)
    client.wait_for_server()

    goal = pixelCountGoal()
    goal.img_rgb = data
    goal.img_gray = grayimg

    client.send_goal(goal)
    client.wait_for_result(rospy.Duration.from_sec(5.0))

    print "result: " + str(client.get_result())#goal.nPixels

    
def img_listener():
    # The anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('img_listener', anonymous=True)

    rospy.Subscriber("/camera/rgb/image_raw", Image, callback)


    
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    img_listener()
