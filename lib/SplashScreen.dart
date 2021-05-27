import 'package:class_5_weather_full_v1/WeatherApp.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  WeatherApp _weatherApp = WeatherApp();

  void getWeather() async {
    Position position = await _weatherApp.getLocation();

    var result = await _weatherApp.requestWeatherFromLatLon(
        position.latitude, position.longitude);
  }

  @override
  void initState() {
    getWeather();
    // requestWeatherFromLatLon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
