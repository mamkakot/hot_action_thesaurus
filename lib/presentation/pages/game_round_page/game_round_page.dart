import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../application/game_round_page/game_round_provider.dart';
import '../../../infrastructure/database.dart';
import '../../../injection.dart';

@RoutePage()
class GameRoundPage extends ConsumerWidget {
  const GameRoundPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roundProvider = ref.watch(gameRoundPageProvider);
    final sas = getIt<WordsDatabase>().getRandomWords(10);
    return Scaffold(
      body: switch (roundProvider) {
        AsyncData(:final value) =>
          value.words.length != value.explainedWordsCount
              ? CardSwiper(
                  cardsCount: value.words.length,
                  isLoop: false,
                  allowedSwipeDirection:
                      const AllowedSwipeDirection.only(up: true),
                  onSwipe: (previousIndex, currentIndex, direction) {
                    if (direction == CardSwiperDirection.top) {
                      ref
                          .read(gameRoundPageProvider.notifier)
                          .incrementExplainedWordsCount();
                    }
                    print(value.explainedWordsCount);

                    return true;
                  },
                  cardBuilder: (
                    context,
                    index,
                    horizontalOffsetPercentage,
                    verticalOffsetPercentage,
                  ) {
                    return Container(
                      color: value.words[index].color,
                      alignment: Alignment.center,
                      child: Text(value.words[index].word),
                    );
                  },
                )
              : Center(
                  child: Column(
                    children: [
                      Text(AppLocalizations.of(context)!.helloWorld),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Дальше!'),
                      ),
                    ],
                  ),
                ),
        AsyncError() => Text(AppLocalizations.of(context)!.helloWorld),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
