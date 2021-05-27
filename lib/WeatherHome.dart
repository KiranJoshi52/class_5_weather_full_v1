import 'package:flutter/material.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({Key key}) : super(key: key);

  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  updateUi() {
    // final arguments = ModalRoute.of(context).settings.arguments as Map;
    //
    // print(arguments['weatherData']);
  }

  @override
  void initState() {
    updateUi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;

    print(arguments['weatherData']);
    return Container();
  }
}
