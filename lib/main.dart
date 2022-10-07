import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_tutorial/character.dart';
import 'package:hive_tutorial/character_hive.dart';
import 'package:hive_tutorial/starwars_state_hive.dart';
import 'package:hive_tutorial/character_model.dart';

late Box boxHive;
Future<void> main() async {
  // Inicializo el Hive
  await Hive.initFlutter();
  // Open a box
  Hive.registerAdapter(StarWarsStateHiveAdapter());
  boxHive = await Hive.openBox('starwars');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CharacterModel listOfCharacters = CharacterModel(
        birthYear: 'birthYear',
        eyeColor: 'eyeColor',
        gender: 'gender',
        hairColor: 'hairColor',
        skinColor: 'skinColor',
        height: 'height',
        homeworld: 'homeworld',
        mass: 'mass',
        name: 'Brian');

    boxHive.put(
        'character1',
        StarWarsStateHive(previous: 'previous', next: 'next', listCharacter: [
          listOfCharacters.toMap(),
          listOfCharacters.toMap(),
          listOfCharacters.toMap(),
          listOfCharacters.toMap(),
          listOfCharacters.toMap()
        ]));
    StarWarsStateHive result = boxHive.get('character1');
    List<CharacterModel> character =
        result.listCharacter.map((e) => CharacterModel.fromJson(e)).toList();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Testing Hive'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) =>
              ListTile(title: Text(character[index].name)),
          shrinkWrap: true,
          itemCount: character.length,
        ));
  }
}
