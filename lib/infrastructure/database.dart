import 'dart:io';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../domain/game_round/word_model.dart';

@lazySingleton
class WordsDatabase {
  late final Database database;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, 'demo_asset_example.db');

    // Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
      // Should happen only the first time you launch your application
      print('Creating new copy from asset');

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      ByteData data = await rootBundle.load(
        url.join(
          'assets',
          'russian_nouns.db',
        ),
      );
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print('Opening existing database');
    }

    // open the database
    database = await openDatabase(path, readOnly: true);
  }

  /// Получение случайных слов из базы данных в заданном количестве.
  ///
  /// [count] -- количество слов в выборке.
  Future<List<WordModel>> getRandomWords(int count) async {
    final randomSeed = Random();
    const min = 0;
    final max = await getCount(tableName: 'words');

    final randomIds =
        List<int>.generate(count, (int index) => min + randomSeed.nextInt(max));
    print('randomIds  = $randomIds');

    // Query the table for all the dogs.
    final List<Map<String, Object?>> wordMaps =
        await database.query('words', where: 'id IN (${randomIds.join(",")})');

    // Convert the list of each dog's fields into a list of `Dog` objects.
    return [
      for (final {
            'id': _ as int,
            'word': word as String,
          } in wordMaps)
        WordModel.newWord(word: word),
    ];
  }

  Future<int> getCount({required String tableName}) async =>
      Sqflite.firstIntValue(
        await database.query(tableName, columns: ['COUNT(*)']),
      ) ??
      0;
}
