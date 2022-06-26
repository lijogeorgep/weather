// To parse this JSON data, do
//
//     final geoLocation = geoLocationFromJson(jsonString);

import 'dart:convert';

GeoLocation geoLocationFromJson(String str) =>
    GeoLocation.fromJson(json.decode(str));

String geoLocationToJson(GeoLocation data) => json.encode(data.toJson());

class GeoLocation {
  GeoLocation({
    this.ip,
    this.city,
    this.region,
    this.country,
    this.loc,
    this.org,
    this.postal,
    this.timezone,
    this.readme,
  });

  String? ip;
  String? city;
  String? region;
  String? country;
  String? loc;
  String? org;
  String? postal;
  String? timezone;
  String? readme;

  factory GeoLocation.fromJson(Map<String, dynamic> json) => GeoLocation(
        ip: json["ip"],
        city: json["city"],
        region: json["region"],
        country: json["country"],
        loc: json["loc"],
        org: json["org"],
        postal: json["postal"],
        timezone: json["timezone"],
        readme: json["readme"],
      );

  Map<String, dynamic> toJson() => {
        "ip": ip,
        "city": city,
        "region": region,
        "country": country,
        "loc": loc,
        "org": org,
        "postal": postal,
        "timezone": timezone,
        "readme": readme,
      };
}
