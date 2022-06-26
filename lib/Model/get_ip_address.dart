// To parse this JSON data, do
//
//     final getIp = getIpFromJson(jsonString);

import 'dart:convert';

GetIp getIpFromJson(String str) => GetIp.fromJson(json.decode(str));

String getIpToJson(GetIp data) => json.encode(data.toJson());

class GetIp {
  GetIp({
    this.ip,
  });

  String? ip;

  factory GetIp.fromJson(Map<String, dynamic> json) => GetIp(
        ip: json["ip"],
      );

  Map<String, dynamic> toJson() => {
        "ip": ip,
      };
}
