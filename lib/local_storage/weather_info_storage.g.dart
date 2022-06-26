// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info_storage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherInfoAdapter extends TypeAdapter<WeatherInfo> {
  @override
  final int typeId = 0;

  @override
  WeatherInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherInfo(
      location: fields[0] as Location?,
      current: fields[1] as Current?,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.current);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
