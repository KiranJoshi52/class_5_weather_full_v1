import 'package:class_5_weather_full_v1/SplashScreen.dart';
import 'package:class_5_weather_full_v1/WeatherHome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WeatherHome(),

      initialRoute: '/',

      routes: {
        '/': (context) => SplashScreen(),
        'home': (context) => WeatherHome(),
      },
    );
  }
}
