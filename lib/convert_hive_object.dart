import 'package:hive_tutorial/character.dart';
import 'package:hive_tutorial/character_hive.dart';
import 'package:hive_tutorial/character_model.dart';

class ConvertHiveObject {
  Character convertFromHive(CharacterHive character) {
    return CharacterModel(
        birthYear: character.birthYear,
        eyeColor: character.eyeColor,
        gender: character.gender,
        hairColor: character.hairColor,
        skinColor: character.skinColor,
        height: character.height,
        homeworld: character.homeworld,
        mass: character.mass,
        name: character.name);
  }

  CharacterHive convertFromObject(Character character) {
    return CharacterHive(
        birthYear: character.birthYear,
        eyeColor: character.eyeColor,
        gender: character.gender,
        hairColor: character.hairColor,
        skinColor: character.skinColor,
        height: character.height,
        homeworld: character.homeworld,
        mass: character.mass,
        name: character.name);
  }
}
