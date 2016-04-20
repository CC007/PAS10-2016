#! /usr/bin/env python
import roslib
roslib.load_manifest('img_manip')
import rospy
import actionlib

#why import pixelCountServer, is it not the defined class method implemented below?
from img_manip.msg import pixelCountAction, pixelCountResult#, pixelCountServer

class pixelCountServer:
  def __init__(self):
    self.server = actionlib.SimpleActionServer('count_pixels', pixelCountAction, self.execute, False)
    self.server.start()
    print "actionserver init"

  def execute(self, goal):
    ret_pCount = pixelCountResult()

    ret_pCount.nPixels = goal.img_rgb.height * goal.img_rgb.width + goal.img_gray.height * goal.img_gray.width

    self.server.set_succeeded(ret_pCount)


if __name__ == '__main__':
  rospy.init_node('conversion_action_server')
  server = pixelCountServer()
  rospy.spin()