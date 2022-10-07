import 'package:hive/hive.dart';

part 'character_hive.g.dart';

@HiveType(typeId: 1)
class CharacterHive {
  CharacterHive({
    required this.birthYear,
    required this.eyeColor,
    required this.gender,
    required this.hairColor,
    required this.skinColor,
    required this.height,
    required this.homeworld,
    required this.mass,
    required this.name,
  });
  @HiveField(0)
  String birthYear;
  @HiveField(1)
  String eyeColor;
  @HiveField(2)
  String gender;
  @HiveField(3)
  String hairColor;
  @HiveField(4)
  String skinColor;
  @HiveField(5)
  String height;
  @HiveField(6)
  String homeworld;
  @HiveField(7)
  String mass;
  @HiveField(8)
  String name;
}
