class TemperatureModel {
  final num temp;

  TemperatureModel({
    this.temp,
  });

  TemperatureModel.fromJson(Map<String, dynamic> json) : temp = json['temp'];

  String get tempToInt {
    return (temp > 0 ? '+' : '') + '${temp.toStringAsFixed(0)}';
  }
}
