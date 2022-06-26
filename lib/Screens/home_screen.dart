import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Constants/palette.dart';
import 'package:weather_app/Controller/geo_location_controller.dart';
import 'package:weather_app/Controller/get_ip_controller.dart';
import 'package:weather_app/Controller/weather_info_controller.dart';
import 'package:weather_app/Widgets/current_weather.dart';
import 'package:weather_app/local_storage/hive_service.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final HiveService hiveService = HiveService();
  var data;
  GetIpController ipAddressController = Get.put(GetIpController());
  GeoLocationController geoLocationController =
      Get.put(GeoLocationController());
  WeatherInfoController weatherInfoController =
      Get.put(WeatherInfoController());
  bool visibility = false;
  final TextEditingController _search = TextEditingController();
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    //data = hiveService.getData("weatherInfo");
    // print('saved data');
    //print(data[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return weatherInfoController.isLoading.isTrue
          ? const Scaffold(body: Center(child: CircularProgressIndicator()))
          : Scaffold(
              backgroundColor: Colors.purpleAccent.shade100,
              appBar: AppBar(
                title: Text(
                  'Weather Report',
                  style: TextStyle(color: Palette.white),
                ),
                centerTitle: true,
                backgroundColor: Colors.purpleAccent,
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Palette.white,
                      ),
                      onPressed: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      })
                ],
              ),
              body: SingleChildScrollView(
                child: Column(children: [
                  /// search
                  Visibility(
                    visible: visibility,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _search,
                        decoration: InputDecoration(
                          labelText: "search here",
                          labelStyle: TextStyle(color: Palette.white),
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _search.clear();
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  currentWeather(context,
                      name: weatherInfoController
                          .getWeatherInfo.value.location!.name,
                      region: weatherInfoController
                          .getWeatherInfo.value.location!.region,
                      country: weatherInfoController
                          .getWeatherInfo.value.location!.country,
                      localTime: weatherInfoController
                          .getWeatherInfo.value.location!.localtime,
                      tempC: weatherInfoController
                          .getWeatherInfo.value.current!.tempC,
                      currentCondition: weatherInfoController
                          .getWeatherInfo.value.current!.condition!.text,
                      windSpeed: weatherInfoController
                          .getWeatherInfo.value.current!.windKph,
                      humidity: weatherInfoController
                          .getWeatherInfo.value.current!.humidity,
                      icon: weatherInfoController
                          .getWeatherInfo.value.current!.condition!.icon,
                      pressureMb: weatherInfoController
                          .getWeatherInfo.value.current!.pressureMb,
                      feelslikeC: weatherInfoController
                          .getWeatherInfo.value.current!.feelslikeC,
                      uv: weatherInfoController
                          .getWeatherInfo.value.current!.uv,
                      visKm: weatherInfoController
                          .getWeatherInfo.value.current!.visKm),
                ]),
              ),
            );
    });
  }
}
