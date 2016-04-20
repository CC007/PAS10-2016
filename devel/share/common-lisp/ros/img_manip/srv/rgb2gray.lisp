; Auto-generated. Do not edit!


(cl:in-package img_manip-srv)


;//! \htmlinclude rgb2gray-request.msg.html

(cl:defclass <rgb2gray-request> (roslisp-msg-protocol:ros-message)
  ((img_rgb
    :reader img_rgb
    :initarg :img_rgb
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass rgb2gray-request (<rgb2gray-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rgb2gray-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rgb2gray-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name img_manip-srv:<rgb2gray-request> is deprecated: use img_manip-srv:rgb2gray-request instead.")))

(cl:ensure-generic-function 'img_rgb-val :lambda-list '(m))
(cl:defmethod img_rgb-val ((m <rgb2gray-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader img_manip-srv:img_rgb-val is deprecated.  Use img_manip-srv:img_rgb instead.")
  (img_rgb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rgb2gray-request>) ostream)
  "Serializes a message object of type '<rgb2gray-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img_rgb) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rgb2gray-request>) istream)
  "Deserializes a message object of type '<rgb2gray-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img_rgb) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rgb2gray-request>)))
  "Returns string type for a service object of type '<rgb2gray-request>"
  "img_manip/rgb2grayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rgb2gray-request)))
  "Returns string type for a service object of type 'rgb2gray-request"
  "img_manip/rgb2grayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rgb2gray-request>)))
  "Returns md5sum for a message object of type '<rgb2gray-request>"
  "1b812c7fddcbef366bd9bae2df581b35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rgb2gray-request)))
  "Returns md5sum for a message object of type 'rgb2gray-request"
  "1b812c7fddcbef366bd9bae2df581b35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rgb2gray-request>)))
  "Returns full string definition for message of type '<rgb2gray-request>"
  (cl:format cl:nil "sensor_msgs/Image img_rgb~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rgb2gray-request)))
  "Returns full string definition for message of type 'rgb2gray-request"
  (cl:format cl:nil "sensor_msgs/Image img_rgb~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rgb2gray-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img_rgb))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rgb2gray-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rgb2gray-request
    (cl:cons ':img_rgb (img_rgb msg))
))
;//! \htmlinclude rgb2gray-response.msg.html

(cl:defclass <rgb2gray-response> (roslisp-msg-protocol:ros-message)
  ((img_gray
    :reader img_gray
    :initarg :img_gray
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass rgb2gray-response (<rgb2gray-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rgb2gray-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rgb2gray-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name img_manip-srv:<rgb2gray-response> is deprecated: use img_manip-srv:rgb2gray-response instead.")))

(cl:ensure-generic-function 'img_gray-val :lambda-list '(m))
(cl:defmethod img_gray-val ((m <rgb2gray-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader img_manip-srv:img_gray-val is deprecated.  Use img_manip-srv:img_gray instead.")
  (img_gray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rgb2gray-response>) ostream)
  "Serializes a message object of type '<rgb2gray-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img_gray) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rgb2gray-response>) istream)
  "Deserializes a message object of type '<rgb2gray-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img_gray) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rgb2gray-response>)))
  "Returns string type for a service object of type '<rgb2gray-response>"
  "img_manip/rgb2grayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rgb2gray-response)))
  "Returns string type for a service object of type 'rgb2gray-response"
  "img_manip/rgb2grayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rgb2gray-response>)))
  "Returns md5sum for a message object of type '<rgb2gray-response>"
  "1b812c7fddcbef366bd9bae2df581b35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rgb2gray-response)))
  "Returns md5sum for a message object of type 'rgb2gray-response"
  "1b812c7fddcbef366bd9bae2df581b35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rgb2gray-response>)))
  "Returns full string definition for message of type '<rgb2gray-response>"
  (cl:format cl:nil "sensor_msgs/Image img_gray~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rgb2gray-response)))
  "Returns full string definition for message of type 'rgb2gray-response"
  (cl:format cl:nil "sensor_msgs/Image img_gray~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rgb2gray-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img_gray))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rgb2gray-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rgb2gray-response
    (cl:cons ':img_gray (img_gray msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rgb2gray)))
  'rgb2gray-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rgb2gray)))
  'rgb2gray-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rgb2gray)))
  "Returns string type for a service object of type '<rgb2gray>"
  "img_manip/rgb2gray")