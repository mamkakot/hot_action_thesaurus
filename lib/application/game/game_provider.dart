import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/game/game_model.dart';
import '../../infrastructure/database.dart';
import '../../injection.dart';

part 'game_provider.g.dart';

@riverpod
class Game extends _$Game {
  @override
  Future<GameModel> build() async {
    final randomWords = await getIt<WordsDatabase>().getRandomWords(5);
    return GameModel(words: randomWords);
  }
}
