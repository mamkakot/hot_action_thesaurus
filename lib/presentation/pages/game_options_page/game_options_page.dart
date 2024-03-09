import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../application/game_options/game_options_provider.dart';

/// Страница для отображения опций, которые задаются перед началом игры.
@RoutePage()
class GameOptionsModelPage extends ConsumerWidget {
  const GameOptionsModelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final options = ref.watch(gameOptionsProvider);
    final localizations = AppLocalizations.of(context)!;
    return switch (options) {
      AsyncData(:final value) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(localizations.wordsPerPlayer),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: value.wordsPerPlayer > value.minWordsPerPlayer
                        ? () {
                            ref
                                .read(gameOptionsProvider.notifier)
                                .updateOptions(
                                  value.copyWith(
                                    wordsPerPlayer: value.wordsPerPlayer - 1,
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
                          .read(gameOptionsProvider.notifier)
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
                                .read(gameOptionsProvider.notifier)
                                .updateOptions(
                                  value.copyWith(
                                    wordsPerPlayer: value.wordsPerPlayer + 1,
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
