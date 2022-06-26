import 'package:hive/hive.dart';

import 'typeAdapters/location.dart';
import 'typeAdapters/current.dart';

part 'weather_info_storage.g.dart';

@HiveType(typeId: 0)
class WeatherInfo {
  @HiveField(0)
  Location? location;
  @HiveField(1)
  Current? current;

  WeatherInfo({
    this.location,
    this.current,
  });
  factory WeatherInfo.fromJson(Map<String, dynamic> json) => WeatherInfo(
        location: Location.fromJson(json["location"]),
        current: Current.fromJson(json["current"]),
      );

  Map<String, dynamic> toJson() => {
        "location": location!.toJson(),
        "current": current!.toJson(),
      };
}
