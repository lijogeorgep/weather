import 'package:hive/hive.dart';

import 'condition.dart';

part 'current.g.dart';

@HiveType(typeId: 1)
class Current {
  @HiveField(0)
  int? lastUpdatedEpoch;
  @HiveField(1)
  String? lastUpdated;
  @HiveField(2)
  double? tempC;
  @HiveField(3)
  double? tempF;
  @HiveField(4)
  int? isDay;
  @HiveField(5)
  Condition? condition;
  @HiveField(6)
  double? windKph;
  @HiveField(7)
  double? windMph;
  @HiveField(8)
  int? windDegree;
  @HiveField(9)
  String? windDir;
  @HiveField(10)
  double? pressureMb;
  @HiveField(11)
  double? pressureIn;
  @HiveField(12)
  double? precipMm;
  @HiveField(13)
  double? precipIn;
  @HiveField(14)
  int? humidity;
  @HiveField(15)
  int? cloud;
  @HiveField(16)
  double? feelslikeC;
  @HiveField(17)
  double? feelslikeF;
  @HiveField(18)
  double? visKm;
  @HiveField(19)
  double? visMiles;
  @HiveField(20)
  double? uv;
  @HiveField(21)
  double? gustMph;
  @HiveField(22)
  double? gustKph;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });
  factory Current.fromJson(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: json["last_updated_epoch"],
        lastUpdated: json["last_updated"],
        tempC: json["temp_c"].toDouble(),
        tempF: json["temp_f"].toDouble(),
        isDay: json["is_day"],
        condition: Condition.fromJson(json["condition"]),
        windMph: json["wind_mph"].toDouble(),
        windKph: json["wind_kph"].toDouble(),
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressureMb: json["pressure_mb"].toDouble(),
        pressureIn: json["pressure_in"].toDouble(),
        precipMm: json["precip_mm"].toDouble(),
        precipIn: json["precip_in"].toDouble(),
        humidity: json["humidity"],
        cloud: json["cloud"],
        feelslikeC: json["feelslike_c"].toDouble(),
        feelslikeF: json["feelslike_f"].toDouble(),
        visKm: json["vis_km"].toDouble(),
        visMiles: json["vis_miles"].toDouble(),
        uv: json["uv"].toDouble(),
        gustMph: json["gust_mph"].toDouble(),
        gustKph: json["gust_kph"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "last_updated_epoch": lastUpdatedEpoch,
        "last_updated": lastUpdated,
        "temp_c": tempC,
        "temp_f": tempF,
        "is_day": isDay,
        "condition": condition!.toJson(),
        "wind_mph": windMph,
        "wind_kph": windKph,
        "wind_degree": windDegree,
        "wind_dir": windDir,
        "pressure_mb": pressureMb,
        "pressure_in": pressureIn,
        "precip_mm": precipMm,
        "precip_in": precipIn,
        "humidity": humidity,
        "cloud": cloud,
        "feelslike_c": feelslikeC,
        "feelslike_f": feelslikeF,
        "vis_km": visKm,
        "vis_miles": visMiles,
        "uv": uv,
        "gust_mph": gustMph,
        "gust_kph": gustKph,
      };
}
