Map countOfWords(List<String> list) {
  Map result = <String, int>{};
  list.forEach((element) {
    result[element] = result.containsKey(element)
        ? result[element] += 1
        : result[element] = 1;
  });
  return result;
}
