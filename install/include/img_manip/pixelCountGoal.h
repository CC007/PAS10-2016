// Generated by gencpp from file img_manip/pixelCountGoal.msg
// DO NOT EDIT!


#ifndef IMG_MANIP_MESSAGE_PIXELCOUNTGOAL_H
#define IMG_MANIP_MESSAGE_PIXELCOUNTGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/Image.h>

namespace img_manip
{
template <class ContainerAllocator>
struct pixelCountGoal_
{
  typedef pixelCountGoal_<ContainerAllocator> Type;

  pixelCountGoal_()
    : img_rgb()
    , img_gray()  {
    }
  pixelCountGoal_(const ContainerAllocator& _alloc)
    : img_rgb(_alloc)
    , img_gray(_alloc)  {
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _img_rgb_type;
  _img_rgb_type img_rgb;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _img_gray_type;
  _img_gray_type img_gray;




  typedef boost::shared_ptr< ::img_manip::pixelCountGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::img_manip::pixelCountGoal_<ContainerAllocator> const> ConstPtr;

}; // struct pixelCountGoal_

typedef ::img_manip::pixelCountGoal_<std::allocator<void> > pixelCountGoal;

typedef boost::shared_ptr< ::img_manip::pixelCountGoal > pixelCountGoalPtr;
typedef boost::shared_ptr< ::img_manip::pixelCountGoal const> pixelCountGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::img_manip::pixelCountGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::img_manip::pixelCountGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace img_manip

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'img_manip': ['/home/student/catkin_ws/devel/share/img_manip/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::img_manip::pixelCountGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::img_manip::pixelCountGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::img_manip::pixelCountGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::img_manip::pixelCountGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::img_manip::pixelCountGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::img_manip::pixelCountGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::img_manip::pixelCountGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "50f919e66685c7755aa0ceaa5f420019";
  }

  static const char* value(const ::img_manip::pixelCountGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x50f919e66685c775ULL;
  static const uint64_t static_value2 = 0x5aa0ceaa5f420019ULL;
};

template<class ContainerAllocator>
struct DataType< ::img_manip::pixelCountGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "img_manip/pixelCountGoal";
  }

  static const char* value(const ::img_manip::pixelCountGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::img_manip::pixelCountGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#please look at the correct definition of Image. how is it imported in action files\n\
#goal\n\
sensor_msgs/Image img_rgb\n\
sensor_msgs/Image img_gray\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::img_manip::pixelCountGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::img_manip::pixelCountGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.img_rgb);
      stream.next(m.img_gray);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct pixelCountGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::img_manip::pixelCountGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::img_manip::pixelCountGoal_<ContainerAllocator>& v)
  {
    s << indent << "img_rgb: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.img_rgb);
    s << indent << "img_gray: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.img_gray);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMG_MANIP_MESSAGE_PIXELCOUNTGOAL_H
