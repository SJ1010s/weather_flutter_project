

class WeatherData{
  List<dynamic> weather;
  Main main;
  String name;


  WeatherData({
    required this.weather,
    required this.main,
    required this.name,
   });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    List<dynamic> weather = json['weather'];
    var main = Main.fromJson(json['main']);
    var name = json['name'] as String;
    return WeatherData(
        weather: weather,
        main: main,
        name: name,);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weather != null) {
      data['weather'] = this.weather.first.toJson();
    }
    if (this.main != null) {
      data['main'] = this.main.toJson();
    }
    data['name'] = this.name;
    return data;
  }
}

class Weather {
  String main;
  String description;
  String icon;

  Weather(
      {required this.main, required this.description, required this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) {
    var main = json['main'] as String;
    var description = json['description'] as String;
    var icon = json['icon'] as String;
    return Weather (main: main, description: description, icon: icon);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Main {
  double temp;
  double feelsLike;
  int humidity;

  Main({required this.temp,
    required this.feelsLike,
    required this.humidity});

  factory Main.fromJson(Map<String, dynamic> json) {
    var temp = json['temp'] as double;
    var feelsLike = json['feels_like'] as double;
    var humidity = json['humidity'] as int;
    return Main(temp: temp,
        feelsLike: feelsLike,
        humidity: humidity);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['humidity'] = this.humidity;
    return data;
  }
}


