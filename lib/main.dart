import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_flutter_project/state/WeatherMainState.dart';
import 'package:weather_flutter_project/view/WeatherAppView.dart';

WeatherMainState weatherMainState = WeatherMainState();

void main() async {
  await weatherMainState.initWeatherState();
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeatherMainState>(
      create: (context) {
        return weatherMainState;
      },
      child: WeatherAppView(),
    );
  }
}
