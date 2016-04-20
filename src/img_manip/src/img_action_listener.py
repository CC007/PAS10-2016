#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Image#imagetype as used in service
from img_manip.srv import *#service type used


import roslib
roslib.load_manifest('img_manip')
import rospy
import actionlib
#from img_manip.msg import pixelCountAction, pixelCountGoal#action file used
from img_manip.msg import *

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
    res = conversion_client(data) #service result
    gray_img = res.img_gray
    
    #initialize and wait for connection to action server
    client = actionlib.SimpleActionClient('count_pixels', pixelCountAction)
    client.wait_for_server()

    #setup goals for actionserver
    goal = pixelCountGoal()
    goal.img_rgb = data
    goal.img_gray = gray_img

    #send goals to actionserver/wait for its result
    client.send_goal(goal)
    client.wait_for_result()#rospy.Duration.from_sec(5.0)

    #result form actionserver
    print "\[T]/: " + str(client.get_result().nPixels)


    #publish grey image for the console
    pub = rospy.Publisher('/img_manip/result_gray', Image, queue_size=100)
    pub.publish(gray_img)

    
def img_listener():
    # The anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('img_listener', anonymous=True)
    print "listening on specified topic(s)."

    rospy.Subscriber("/camera/rgb/image_raw", Image, callback)
    
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    img_listener()
