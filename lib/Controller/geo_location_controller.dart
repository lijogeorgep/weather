import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/Model/geo_location.dart';
import 'package:weather_app/Services/geo_location_service.dart';

class GeoLocationController extends GetxController {
  var getLocation = GeoLocation().obs;
  var ipAddress;

  @override
  void onInit() {
    SharedPreferences.getInstance().then((value) {
      ipAddress = value.getString("ipAddress");
      fetchLocation(ipAddress);
    });

    super.onInit();
  }

  void fetchLocation(ipAddress) async {
    var location = await GeoLocationService.fetchGeoLocation(ipAddress);

    if (location != null) {
      getLocation.value = location;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("cityName", getLocation.value.city!);
    }
  }
}
