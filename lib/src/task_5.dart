List<int> findInt(List<String> st) {
  List<int> result = [];
  Map map = {
    "zero": 0,
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": 6,
    "seven": 7,
    "eight": 8,
    "nine": 9,
  };
  for (var element in st) {
    if (map.containsKey(element) && !result.contains(map[element])) {
      result.add(map[element]);
    }
  }
  return result;
}
