# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from img_manip/pixelCountGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import sensor_msgs.msg

class pixelCountGoal(genpy.Message):
  _md5sum = "50f919e66685c7755aa0ceaa5f420019"
  _type = "img_manip/pixelCountGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#please look at the correct definition of Image. how is it imported in action files
#goal
sensor_msgs/Image img_rgb
sensor_msgs/Image img_gray

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['img_rgb','img_gray']
  _slot_types = ['sensor_msgs/Image','sensor_msgs/Image']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       img_rgb,img_gray

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(pixelCountGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.img_rgb is None:
        self.img_rgb = sensor_msgs.msg.Image()
      if self.img_gray is None:
        self.img_gray = sensor_msgs.msg.Image()
    else:
      self.img_rgb = sensor_msgs.msg.Image()
      self.img_gray = sensor_msgs.msg.Image()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.img_rgb.header.seq, _x.img_rgb.header.stamp.secs, _x.img_rgb.header.stamp.nsecs))
      _x = self.img_rgb.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.img_rgb.height, _x.img_rgb.width))
      _x = self.img_rgb.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.img_rgb.is_bigendian, _x.img_rgb.step))
      _x = self.img_rgb.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.img_gray.header.seq, _x.img_gray.header.stamp.secs, _x.img_gray.header.stamp.nsecs))
      _x = self.img_gray.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.img_gray.height, _x.img_gray.width))
      _x = self.img_gray.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.img_gray.is_bigendian, _x.img_gray.step))
      _x = self.img_gray.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.img_rgb is None:
        self.img_rgb = sensor_msgs.msg.Image()
      if self.img_gray is None:
        self.img_gray = sensor_msgs.msg.Image()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.img_rgb.header.seq, _x.img_rgb.header.stamp.secs, _x.img_rgb.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_rgb.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.img_rgb.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.img_rgb.height, _x.img_rgb.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_rgb.encoding = str[start:end].decode('utf-8')
      else:
        self.img_rgb.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.img_rgb.is_bigendian, _x.img_rgb.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.img_rgb.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.img_gray.header.seq, _x.img_gray.header.stamp.secs, _x.img_gray.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_gray.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.img_gray.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.img_gray.height, _x.img_gray.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_gray.encoding = str[start:end].decode('utf-8')
      else:
        self.img_gray.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.img_gray.is_bigendian, _x.img_gray.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.img_gray.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.img_rgb.header.seq, _x.img_rgb.header.stamp.secs, _x.img_rgb.header.stamp.nsecs))
      _x = self.img_rgb.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.img_rgb.height, _x.img_rgb.width))
      _x = self.img_rgb.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.img_rgb.is_bigendian, _x.img_rgb.step))
      _x = self.img_rgb.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.img_gray.header.seq, _x.img_gray.header.stamp.secs, _x.img_gray.header.stamp.nsecs))
      _x = self.img_gray.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.img_gray.height, _x.img_gray.width))
      _x = self.img_gray.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.img_gray.is_bigendian, _x.img_gray.step))
      _x = self.img_gray.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.img_rgb is None:
        self.img_rgb = sensor_msgs.msg.Image()
      if self.img_gray is None:
        self.img_gray = sensor_msgs.msg.Image()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.img_rgb.header.seq, _x.img_rgb.header.stamp.secs, _x.img_rgb.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_rgb.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.img_rgb.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.img_rgb.height, _x.img_rgb.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_rgb.encoding = str[start:end].decode('utf-8')
      else:
        self.img_rgb.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.img_rgb.is_bigendian, _x.img_rgb.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.img_rgb.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.img_gray.header.seq, _x.img_gray.header.stamp.secs, _x.img_gray.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_gray.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.img_gray.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.img_gray.height, _x.img_gray.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img_gray.encoding = str[start:end].decode('utf-8')
      else:
        self.img_gray.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.img_gray.is_bigendian, _x.img_gray.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.img_gray.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_2I = struct.Struct("<2I")
_struct_BI = struct.Struct("<BI")
