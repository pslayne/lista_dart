class Integer {
  late int i;
  Integer(int i) {
    this.i = i;
  }

  @override
  String toString() {
    return i.toString();
  }  

  @override
  bool operator == (Object other) =>
    identical(this, other) ||
    other is Integer &&
    runtimeType == other.runtimeType &&
    i == other.i;

  @override
  int get hashCode => i.hashCode;
}