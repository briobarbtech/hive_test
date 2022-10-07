// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterHiveAdapter extends TypeAdapter<CharacterHive> {
  @override
  final int typeId = 1;

  @override
  CharacterHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterHive(
      birthYear: fields[0] as String,
      eyeColor: fields[1] as String,
      gender: fields[2] as String,
      hairColor: fields[3] as String,
      skinColor: fields[4] as String,
      height: fields[5] as String,
      homeworld: fields[6] as String,
      mass: fields[7] as String,
      name: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterHive obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.birthYear)
      ..writeByte(1)
      ..write(obj.eyeColor)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.hairColor)
      ..writeByte(4)
      ..write(obj.skinColor)
      ..writeByte(5)
      ..write(obj.height)
      ..writeByte(6)
      ..write(obj.homeworld)
      ..writeByte(7)
      ..write(obj.mass)
      ..writeByte(8)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
