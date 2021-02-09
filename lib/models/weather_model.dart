class WeatherModel {
  final int id;
  final String main;

  WeatherModel({
    this.id,
    this.main,
  });

  WeatherModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        main = json['main'];
}
