// Generated by gencpp from file img_manip/rgb2gray.msg
// DO NOT EDIT!


#ifndef IMG_MANIP_MESSAGE_RGB2GRAY_H
#define IMG_MANIP_MESSAGE_RGB2GRAY_H

#include <ros/service_traits.h>


#include <img_manip/rgb2grayRequest.h>
#include <img_manip/rgb2grayResponse.h>


namespace img_manip
{

struct rgb2gray
{

typedef rgb2grayRequest Request;
typedef rgb2grayResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct rgb2gray
} // namespace img_manip


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::img_manip::rgb2gray > {
  static const char* value()
  {
    return "1b812c7fddcbef366bd9bae2df581b35";
  }

  static const char* value(const ::img_manip::rgb2gray&) { return value(); }
};

template<>
struct DataType< ::img_manip::rgb2gray > {
  static const char* value()
  {
    return "img_manip/rgb2gray";
  }

  static const char* value(const ::img_manip::rgb2gray&) { return value(); }
};


// service_traits::MD5Sum< ::img_manip::rgb2grayRequest> should match 
// service_traits::MD5Sum< ::img_manip::rgb2gray > 
template<>
struct MD5Sum< ::img_manip::rgb2grayRequest>
{
  static const char* value()
  {
    return MD5Sum< ::img_manip::rgb2gray >::value();
  }
  static const char* value(const ::img_manip::rgb2grayRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::img_manip::rgb2grayRequest> should match 
// service_traits::DataType< ::img_manip::rgb2gray > 
template<>
struct DataType< ::img_manip::rgb2grayRequest>
{
  static const char* value()
  {
    return DataType< ::img_manip::rgb2gray >::value();
  }
  static const char* value(const ::img_manip::rgb2grayRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::img_manip::rgb2grayResponse> should match 
// service_traits::MD5Sum< ::img_manip::rgb2gray > 
template<>
struct MD5Sum< ::img_manip::rgb2grayResponse>
{
  static const char* value()
  {
    return MD5Sum< ::img_manip::rgb2gray >::value();
  }
  static const char* value(const ::img_manip::rgb2grayResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::img_manip::rgb2grayResponse> should match 
// service_traits::DataType< ::img_manip::rgb2gray > 
template<>
struct DataType< ::img_manip::rgb2grayResponse>
{
  static const char* value()
  {
    return DataType< ::img_manip::rgb2gray >::value();
  }
  static const char* value(const ::img_manip::rgb2grayResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IMG_MANIP_MESSAGE_RGB2GRAY_H
