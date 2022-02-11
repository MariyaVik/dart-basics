import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  // Зачем это надо и как использовать? Пока непонятно... :(
  factory Point.zero() {
    return Point(0, 0, 0);
  }

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    var dz = z - other.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }
}
