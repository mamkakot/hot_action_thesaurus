import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../application/game_options_page/game_options_page_provider.dart';

import '../../routes/router.dart';
import 'widgets/player_card.dart';

@RoutePage()
class PlayerListPage extends ConsumerWidget {
  const PlayerListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final options = ref.watch(gameOptionsPageProvider);
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: switch (options) {
        AsyncData(:final value) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    AppLocalizations.of(context)!.enterPlayersNames,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.playerCount + 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: index != value.playerCount
                            ? PlayerCard(playerNumber: index + 1)
                            : ElevatedButton(
                                onPressed: () {
                                  context.router.push(const GameRoundRoute());
                                },
                                child: Text(
                                  localizations.letsGo,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        AsyncError() => Text(localizations.helloWorld),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}