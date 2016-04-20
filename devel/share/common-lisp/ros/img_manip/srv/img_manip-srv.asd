
(cl:in-package :asdf)

(defsystem "img_manip-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :img_manip-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "rgb2gray (copy)" :depends-on ("_package_rgb2gray (copy)"))
    (:file "_package_rgb2gray (copy)" :depends-on ("_package"))
    (:file "rgb2gray" :depends-on ("_package_rgb2gray"))
    (:file "_package_rgb2gray" :depends-on ("_package"))
  ))