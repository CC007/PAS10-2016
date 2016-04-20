#! /usr/bin/env python
import roslib
roslib.load_manifest('img_manip')
import rospy
import actionlib

#is pixelCount.msg generated from pixeCount.action?
#why import ConversionSever, is it not the defined class method implemented below?
from img_manip.msg import pixelCountAction#, pixelCountServer

class pixelCountServer:
  def __init__(self):
    self.server = actionlib.SimpleActionServer('count_pixels', pixelCountAction, self.execute, False)
    self.server.start()

  def execute(self, goal):
    #the result is stored in goal.nPixels which is valid if goal is the actual action, and not solely a goal.
    goal.nPixels = goal.img_rgb.height * goal.img_rgb.width + goal.img_gray.height * goal.img_gray.width
    print str(goal.nPixels)
    self.server.set_succeeded()


if __name__ == '__main__':
  rospy.init_node('conversion_action_server')
  server = pixelCountServer()
  rospy.spin()
