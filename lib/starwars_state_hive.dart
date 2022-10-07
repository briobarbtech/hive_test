import 'package:hive/hive.dart';
import 'package:hive_tutorial/character.dart';
import 'package:hive_tutorial/character_hive.dart';

part 'starwars_state_hive.g.dart';

@HiveType(typeId: 1)
class StarWarsStateHive {
  StarWarsStateHive(
      {required this.listCharacter,
      required this.previous,
      required this.next});
  @HiveField(0)
  List<Map<String, dynamic>> listCharacter;
  @HiveField(1)
  String previous;
  @HiveField(2)
  String next;
}
