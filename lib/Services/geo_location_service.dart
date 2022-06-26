import 'package:http/http.dart' as http;
import 'package:weather_app/Model/geo_location.dart';

class GeoLocationService {
  static var client = http.Client();
  static Future<GeoLocation?> fetchGeoLocation(ipaddress) async {
    var url = "https://ipinfo.io/$ipaddress/geo";
    final response = await client.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      print(response.body);
      return geoLocationFromJson(response.body);
    } else {
      print('no response');
      return null;
    }
  }
}
