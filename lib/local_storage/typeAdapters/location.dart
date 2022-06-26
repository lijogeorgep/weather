import 'package:hive/hive.dart';

part 'location.g.dart';

@HiveType(typeId: 3)
class Location {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? region;
  @HiveField(2)
  String? country;
  @HiveField(3)
  double? lat;
  @HiveField(4)
  double? lon;
  @HiveField(5)
  String? tzId;
  @HiveField(6)
  int? localtimeEpoch;
  @HiveField(7)
  String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });
  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        region: json["region"],
        country: json["country"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        tzId: json["tz_id"],
        localtimeEpoch: json["localtime_epoch"],
        localtime: json["localtime"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "region": region,
        "country": country,
        "lat": lat,
        "lon": lon,
        "tz_id": tzId,
        "localtime_epoch": localtimeEpoch,
        "localtime": localtime,
      };
}
