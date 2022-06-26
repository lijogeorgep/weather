import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/Model/weather_info.dart';
import 'package:weather_app/Services/weather_info_service.dart';
import 'package:weather_app/local_storage/hive_service.dart';

class WeatherInfoController extends GetxController {
  var getWeatherInfo = WeatherInfo().obs;
  var cityName;
  var isLoading = true.obs;
  final HiveService hiveService = HiveService();
  @override
  void onInit() {
    SharedPreferences.getInstance().then((value) {
      cityName = value.getString("cityName");
      fetchWeatherInfo(cityName);
    });

    super.onInit();
  }

  void fetchWeatherInfo(cityName) async {
    var information =
        await WeatherInfoService.fetchWeatherInfoService(cityName);

    if (information != null) {
      getWeatherInfo.value = information;
      // Clearing any old data remains in user db
      //  await hiveService.deleteData("weatherInfo");
      // Saving new data of users to db
      //  await hiveService.saveData([getWeatherInfo.value], "weatherInfo");
      isLoading.value = false;
    }
  }
}
