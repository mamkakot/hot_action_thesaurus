import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../application/game_options_page/game_options_page_provider.dart';

/// Страница для отображения опций, которые задаются перед началом игры.
@RoutePage()
class GameOptionsPage extends ConsumerWidget {
  const GameOptionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final options = ref.watch(gameOptionsPageProvider);
    final localizations = AppLocalizations.of(context)!;
    return switch (options) {
      AsyncData(:final value) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(localizations.playerCount),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: value.playerCount > value.minPlayerCount
                        ? () {
                            ref
                                .read(gameOptionsPageProvider.notifier)
                                .updateOptions(
                                  value.copyWith(
                                    playerCount: value.playerCount - 1,
                                  ),
                                );
                          }
                        : null,
                    icon: const Icon(Icons.remove),
                  ),
                  NumberPicker(
                    minValue: value.minPlayerCount,
                    maxValue: value.maxPlayerCount,
                    value: value.playerCount,
                    onChanged: (val) {
                      ref
                          .read(gameOptionsPageProvider.notifier)
                          .updateOptions(value.copyWith(playerCount: val));
                    },
                    axis: Axis.horizontal,
                    selectedTextStyle:
                        const TextStyle(color: Colors.red, fontSize: 24.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.black26),
                    ),
                  ),
                  IconButton(
                    onPressed: value.playerCount < value.maxPlayerCount
                        ? () {
                            ref
                                .read(gameOptionsPageProvider.notifier)
                                .updateOptions(
                                  value.copyWith(
                                    playerCount: value.playerCount + 1,
                                  ),
                                );
                          }
                        : null,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              Text(localizations.wordsPerPlayer),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: value.wordsPerPlayer > value.minWordsPerPlayer
                        ? () {
                            ref
                                .read(gameOptionsPageProvider.notifier)
                                .updateOptions(
                                  value.copyWith(
                                    playerCount: value.wordsPerPlayer - 1,
                                  ),
                                );
                          }
                        : null,
                    icon: const Icon(Icons.remove),
                  ),
                  NumberPicker(
                    minValue: value.minWordsPerPlayer,
                    maxValue: value.maxWordsPerPlayer,
                    value: value.wordsPerPlayer,
                    step: value.wordsPerPlayerStep,
                    onChanged: (val) {
                      ref
                          .read(gameOptionsPageProvider.notifier)
                          .updateOptions(value.copyWith(wordsPerPlayer: val));
                    },
                    axis: Axis.horizontal,
                    selectedTextStyle:
                        const TextStyle(color: Colors.red, fontSize: 24.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.black26),
                    ),
                  ),
                  IconButton(
                    onPressed: value.wordsPerPlayer < value.maxWordsPerPlayer
                        ? () {
                            ref
                                .read(gameOptionsPageProvider.notifier)
                                .updateOptions(
                                  value.copyWith(
                                    playerCount: value.wordsPerPlayer + 1,
                                  ),
                                );
                          }
                        : null,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      AsyncError() => Text(localizations.helloWorld),
      _ => const CircularProgressIndicator(),
    };
  }
}
