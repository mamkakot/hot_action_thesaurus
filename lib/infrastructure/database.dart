import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../domain/game_round/word_model.dart';

@lazySingleton
class WordsDatabase {
  late final Database database;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'words_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE words(id INTEGER PRIMARY KEY, word TEXT)',
        );
      },
      version: 1,
    );
  }

  /// Получение случайных слов из базы данных в заданном количестве.
  ///
  /// [count]
  Future<List<WordModel>> getRandomWords(int count) async {
    // Get a reference to the database.
    final db = await database;

    final randomSeed = Random();
    const min = 0;
    const max = 100;

    final randomIds =
        List<int>.generate(count, (int index) => min + randomSeed.nextInt(max));
    print('randomIds  = $randomIds');

    // Query the table for all the dogs.
    final List<Map<String, Object?>> wordMaps =
        await db.query('words', where: 'id IN (${randomIds.join(",")})');

    // Convert the list of each dog's fields into a list of `Dog` objects.
    return [
      for (final {
            'id': _ as int,
            'word': word as String,
          } in wordMaps)
        WordModel(word: word, isExplained: false),
    ];
  }
}
