import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class WeatherApp {
  static final String appKey = "7029946ea1e0a02518a293e1058492a3";

  Future<Position> getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    // requestWeatherFromLatLon(position.latitude, position.longitude);
    return position;
  }

  Future<dynamic> requestWeatherFromLatLon(
      double userLatitude, double userLongitude) async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$userLatitude&lon=$userLongitude&appid=$appKey');

    var response = await http.get(url);

    var result = response.body;

    return result;
  }
}
