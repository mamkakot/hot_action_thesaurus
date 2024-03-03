import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PlayerCard extends ConsumerWidget {
  final int playerNumber;

  const PlayerCard({required this.playerNumber, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            const Icon(Icons.person, size: 32.0),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText:
                      '${AppLocalizations.of(context)!.playerPlaceholder} № $playerNumber',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
