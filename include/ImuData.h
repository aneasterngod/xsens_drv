#ifndef IMUDATA
#define IMUDATA

#include <stdint.h>
class ImuData{
public:
    ImuData();
    ~ImuData();
public:
    int64_t m_timestamp;
    double m_rotation_x;
    double m_rotation_y;
    double m_rotation_z;
    double m_acceleration_x;
    double m_acceleration_y;
    double m_acceleration_z;
};

#endif
