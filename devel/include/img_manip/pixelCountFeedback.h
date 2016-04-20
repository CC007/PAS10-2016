// Generated by gencpp from file img_manip/pixelCountFeedback.msg
// DO NOT EDIT!


#ifndef IMG_MANIP_MESSAGE_PIXELCOUNTFEEDBACK_H
#define IMG_MANIP_MESSAGE_PIXELCOUNTFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace img_manip
{
template <class ContainerAllocator>
struct pixelCountFeedback_
{
  typedef pixelCountFeedback_<ContainerAllocator> Type;

  pixelCountFeedback_()
    : n_progress(0)  {
    }
  pixelCountFeedback_(const ContainerAllocator& _alloc)
    : n_progress(0)  {
    }



   typedef uint32_t _n_progress_type;
  _n_progress_type n_progress;




  typedef boost::shared_ptr< ::img_manip::pixelCountFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::img_manip::pixelCountFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct pixelCountFeedback_

typedef ::img_manip::pixelCountFeedback_<std::allocator<void> > pixelCountFeedback;

typedef boost::shared_ptr< ::img_manip::pixelCountFeedback > pixelCountFeedbackPtr;
typedef boost::shared_ptr< ::img_manip::pixelCountFeedback const> pixelCountFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::img_manip::pixelCountFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::img_manip::pixelCountFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace img_manip

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'img_manip': ['/home/student/catkin_ws/devel/share/img_manip/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::img_manip::pixelCountFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::img_manip::pixelCountFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::img_manip::pixelCountFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f07532da405150f41648b64daa1bcb4c";
  }

  static const char* value(const ::img_manip::pixelCountFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf07532da405150f4ULL;
  static const uint64_t static_value2 = 0x1648b64daa1bcb4cULL;
};

template<class ContainerAllocator>
struct DataType< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "img_manip/pixelCountFeedback";
  }

  static const char* value(const ::img_manip::pixelCountFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback message\n\
uint32 n_progress\n\
\n\
";
  }

  static const char* value(const ::img_manip::pixelCountFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.n_progress);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct pixelCountFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::img_manip::pixelCountFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::img_manip::pixelCountFeedback_<ContainerAllocator>& v)
  {
    s << indent << "n_progress: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.n_progress);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMG_MANIP_MESSAGE_PIXELCOUNTFEEDBACK_H