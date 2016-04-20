
(cl:in-package :asdf)

(defsystem "img_manip-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "pixelCountAction" :depends-on ("_package_pixelCountAction"))
    (:file "_package_pixelCountAction" :depends-on ("_package"))
    (:file "pixelCountActionResult" :depends-on ("_package_pixelCountActionResult"))
    (:file "_package_pixelCountActionResult" :depends-on ("_package"))
    (:file "pixelCountGoal" :depends-on ("_package_pixelCountGoal"))
    (:file "_package_pixelCountGoal" :depends-on ("_package"))
    (:file "pixelCountActionFeedback" :depends-on ("_package_pixelCountActionFeedback"))
    (:file "_package_pixelCountActionFeedback" :depends-on ("_package"))
    (:file "pixelCountResult" :depends-on ("_package_pixelCountResult"))
    (:file "_package_pixelCountResult" :depends-on ("_package"))
    (:file "pixelCountFeedback" :depends-on ("_package_pixelCountFeedback"))
    (:file "_package_pixelCountFeedback" :depends-on ("_package"))
    (:file "pixelCountActionGoal" :depends-on ("_package_pixelCountActionGoal"))
    (:file "_package_pixelCountActionGoal" :depends-on ("_package"))
  ))