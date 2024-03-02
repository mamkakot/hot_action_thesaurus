import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../application/options_page/options_page_provider.dart';

@RoutePage()
class OptionsPage extends ConsumerWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final options = ref.watch(optionsPageProvider);
    final localizations = AppLocalizations.of(context)!;
    return switch (options) {
      AsyncData(:final value) => Column(
          children: [
            Text(localizations.playerCount),
            NumberPicker(
              minValue: 1,
              maxValue: 10,
              value: value.playerCount,
              onChanged: (val) {
                ref
                    .read(optionsPageProvider.notifier)
                    .updateOptions(value.copyWith(playerCount: val));
              },
              step: 1,
              axis: Axis.horizontal,
            ),
            NumberPicker(
              minValue: 10,
              maxValue: 100,
              value: value.wordsPerPlayer,
              onChanged: (val) {
                ref
                    .read(optionsPageProvider.notifier)
                    .updateOptions(value.copyWith(wordsPerPlayer: val));
              },
              step: 10,
              axis: Axis.horizontal,
            ),
          ],
        ),
      AsyncError() => Text(localizations.helloWorld),
      _ => const CircularProgressIndicator(),
    };
  }
}
