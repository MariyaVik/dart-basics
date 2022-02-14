bool _isNum(String c) => num.tryParse(c) != null;

List<num> numInStr(String st) {
  var list = st.split(" ");
  List<num> result = [];
  for (var element in list) {
    if (_isNum(element)) {
      result.add(num.parse(element));
    }
  }
  return result;
}
