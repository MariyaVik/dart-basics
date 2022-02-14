Map countOfWords(List<String> list) {
  Map result = <String, int>{};
  for (var element in list) {
    result[element] = result.containsKey(element)
        ? result[element] += 1
        : result[element] = 1;
  }
  return result;
}
