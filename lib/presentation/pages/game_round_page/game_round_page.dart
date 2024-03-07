import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../application/game_round_page/game_round_provider.dart';

@RoutePage()
class GameRoundPage extends ConsumerWidget {
  const GameRoundPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final round = ref.watch(gameRoundPageProvider);
    return Scaffold(
      body: switch (round) {
        AsyncData(:final value) => CardSwiper(
            cardsCount: value.words.length,
            isLoop: false,
            onSwipe: (previousIndex, currentIndex, direction) {
              if (direction == CardSwiperDirection.right) {
                ref
                    .read(gameRoundPageProvider.notifier)
                    .incrementExplainedWordsCount();
              }
              print(ref.read(gameRoundPageProvider).value!.explainedWordsCount);
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
          ),
        AsyncError() => Text(AppLocalizations.of(context)!.helloWorld),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
