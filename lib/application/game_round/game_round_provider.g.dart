// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_round_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameRoundHash() => r'e6abcaa21aae639d04d83d1fa04cef2aa2e835d4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GameRound
    extends BuildlessAutoDisposeAsyncNotifier<GameRoundModel> {
  late final Player player;
  late final Player secondPlayer;

  FutureOr<GameRoundModel> build(
    Player player,
    Player secondPlayer,
  );
}

/// See also [GameRound].
@ProviderFor(GameRound)
const gameRoundProvider = GameRoundFamily();

/// See also [GameRound].
class GameRoundFamily extends Family<AsyncValue<GameRoundModel>> {
  /// See also [GameRound].
  const GameRoundFamily();

  /// See also [GameRound].
  GameRoundProvider call(
    Player player,
    Player secondPlayer,
  ) {
    return GameRoundProvider(
      player,
      secondPlayer,
    );
  }

  @override
  GameRoundProvider getProviderOverride(
    covariant GameRoundProvider provider,
  ) {
    return call(
      provider.player,
      provider.secondPlayer,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gameRoundProvider';
}

/// See also [GameRound].
class GameRoundProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GameRound, GameRoundModel> {
  /// See also [GameRound].
  GameRoundProvider(
    Player player,
    Player secondPlayer,
  ) : this._internal(
          () => GameRound()
            ..player = player
            ..secondPlayer = secondPlayer,
          from: gameRoundProvider,
          name: r'gameRoundProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gameRoundHash,
          dependencies: GameRoundFamily._dependencies,
          allTransitiveDependencies: GameRoundFamily._allTransitiveDependencies,
          player: player,
          secondPlayer: secondPlayer,
        );

  GameRoundProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.player,
    required this.secondPlayer,
  }) : super.internal();

  final Player player;
  final Player secondPlayer;

  @override
  FutureOr<GameRoundModel> runNotifierBuild(
    covariant GameRound notifier,
  ) {
    return notifier.build(
      player,
      secondPlayer,
    );
  }

  @override
  Override overrideWith(GameRound Function() create) {
    return ProviderOverride(
      origin: this,
      override: GameRoundProvider._internal(
        () => create()
          ..player = player
          ..secondPlayer = secondPlayer,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        player: player,
        secondPlayer: secondPlayer,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GameRound, GameRoundModel>
      createElement() {
    return _GameRoundProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameRoundProvider &&
        other.player == player &&
        other.secondPlayer == secondPlayer;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, player.hashCode);
    hash = _SystemHash.combine(hash, secondPlayer.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GameRoundRef on AutoDisposeAsyncNotifierProviderRef<GameRoundModel> {
  /// The parameter `player` of this provider.
  Player get player;

  /// The parameter `secondPlayer` of this provider.
  Player get secondPlayer;
}

class _GameRoundProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GameRound, GameRoundModel>
    with GameRoundRef {
  _GameRoundProviderElement(super.provider);

  @override
  Player get player => (origin as GameRoundProvider).player;
  @override
  Player get secondPlayer => (origin as GameRoundProvider).secondPlayer;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
