class City {
  City(this.name);
  int id;
  final String name;
  Map<String, dynamic> toMap() {
    return {
      'name': name.toLowerCase(),
    };
  }

  static City fromMap(Map<String, dynamic> map) {
    return City(
      map['name'],
    );
  }
}
