bool _isNum(String c) => num.tryParse(c) != null;

List<num> NumInStr(String st) {
  var list = st.split(" ");
  List<num> result = [];
  list.forEach((element) {
    if (_isNum(element)) {
      result.add(num.parse(element));
    }
  });
  return result;
}
