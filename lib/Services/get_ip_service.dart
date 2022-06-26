import 'package:http/http.dart' as http;
import 'package:weather_app/Model/get_ip_address.dart';

class GetIpService {
  static var client = http.Client();
  static Future<GetIp?> fetchGetIpService() async {
    var url = "https://api.ipify.org/?format=json";
    final response = await client.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      return getIpFromJson(response.body);
    } else {
      print('no response');
      return null;
    }
  }
}
