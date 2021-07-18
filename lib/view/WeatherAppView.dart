
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_flutter_project/state/WeatherMainState.dart';

class WeatherAppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Padding(
                child: Text(
                  "${context.watch<WeatherMainState>().cityName}",
                  style: TextStyle(fontSize: 40),
                ),
                padding: EdgeInsets.only(top: 50),
              ),
            ),
            Expanded(
              child: Text(
                "${context.watch<WeatherMainState>().temp}ºC",
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                "${context.watch<WeatherMainState>().description}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ), flex: 1,),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      child: Text(
                        "Ощущается как",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      padding: EdgeInsets.only(left: 30),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      child: Text(
                        "${context.watch<WeatherMainState>().feelsLike}ºC",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                      padding: EdgeInsets.only(right: 30),
                    ),
                  ),
                ],
              ),
              flex: 0,
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        child: Text(
                          "Влажность",
                          style: TextStyle(fontSize: 25),
                        ),
                        padding: EdgeInsets.only(left: 30),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                        child: Padding(
                          child: Text(
                            "${context.watch<WeatherMainState>().humidity} %",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.end,
                          ),
                          padding: EdgeInsets.only(right: 30),
                        ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                flex: 0),
            Expanded(
              child: Container(),
              flex: 2,
            ),
            Expanded(
              child: Text("Последнее обновление: 15:00", style: TextStyle()),
              flex: 0,
            ),
            Padding(
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        context.read<WeatherMainState>().initWeatherState();
                        },
                      child: Text("Обновить данные",
                          style: TextStyle(fontSize: 20)),
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          side:
                          BorderSide(color: Colors.blueAccent, width: 1.5)),
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.only(bottom: 50, left: 20, right: 20),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
