#include <chrono>

#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE chrono_test
#include <boost/test/included/unit_test.hpp>

using TP_t = std::chrono::time_point<std::chrono::system_clock>;
using duration_t = std::chrono::nanoseconds;

namespace std {
inline std::ostream& operator<<(ostream& os, const TP_t& time_point) {
  os << std::to_string(time_point.time_since_epoch().count());
  return os;
}
inline std::ostream& operator<<(ostream& os,
                                const std::chrono::nanoseconds& duration) {
  os << TP_t{duration};
  return os;
}
}  // namespace std

template <typename T>
T copy_T(T t) {
  return t;
}

BOOST_AUTO_TEST_CASE(copy_test) {
  duration_t duration;
  auto duration_copy = copy_T(duration);
  BOOST_CHECK_EQUAL(duration, duration_copy);
  //   TP_t timepoint;
  //   auto timepoint_copy = copy_T(timepoint);
  //   BOOST_CHECK_EQUAL(timepoint, timepoint_copy);
}
