import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../application/game/game_provider.dart';
import '../../../application/game_round/game_round_provider.dart';

@RoutePage()
class GameRoundPage extends ConsumerWidget {
  const GameRoundPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context)!;
    final roundProvider = ref.watch(gameRoundProvider);

    final game = ref.watch(gameProvider);
    if (roundProvider is AsyncError || game is AsyncError) {
      return Text('error');
    } else if (roundProvider is AsyncLoading || game is AsyncLoading) {
      return Text('loading');
    }
    return Scaffold(
      body: game.value!.words.length != roundProvider.value!.explainedWordsCount
          ? Column(
              children: [
                Text(
                  '${localizations.wordsLeft}: ${game.value!.words.length - roundProvider.value!.explainedWordsCount}',
                ),
                Expanded(
                  child: CardSwiper(
                    cardsCount: game.value!.words.length,
                    isLoop: false,
                    allowedSwipeDirection:
                        const AllowedSwipeDirection.only(up: true),
                    onSwipe: (previousIndex, currentIndex, direction) {
                      if (direction == CardSwiperDirection.top) {
                        ref
                            .read(gameRoundProvider.notifier)
                            .incrementExplainedWordsCount();
                      }
                      print(roundProvider.value!.explainedWordsCount);

                      return true;
                    },
                    cardBuilder: (
                      context,
                      index,
                      horizontalOffsetPercentage,
                      verticalOffsetPercentage,
                    ) {
                      return Container(
                        decoration: BoxDecoration(
                          color: game.value!.words[index].color,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(game.value!.words[index].word),
                      );
                    },
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: [
                  Text(AppLocalizations.of(context)!.helloWorld),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(localizations.goOn),
                  ),
                ],
              ),
            ),
    );
  }
}
