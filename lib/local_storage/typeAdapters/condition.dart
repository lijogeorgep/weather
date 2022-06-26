import 'package:hive/hive.dart';

part 'condition.g.dart';

@HiveType(typeId: 2)
class Condition {
  @HiveField(0)
  String? text;
  @HiveField(1)
  String? icon;
  @HiveField(2)
  int? code;

  Condition({
    this.text,
    this.icon,
    this.code,
  });
  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        text: json["text"],
        icon: json["icon"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "icon": icon,
        "code": code,
      };
}
