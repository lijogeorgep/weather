import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/Model/get_ip_address.dart';
import 'package:weather_app/Services/get_ip_service.dart';

class GetIpController extends GetxController {
  var getIP = GetIp().obs;
  var ipAddress = "".obs;
  @override
  void onInit() {
    fetchIpAddress();
    super.onInit();
  }

  void fetchIpAddress() async {
    var ip = await GetIpService.fetchGetIpService();

    if (ip != null) {
      getIP.value = ip;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("ipAddress", getIP.value.ip!);
    }
  }
}
