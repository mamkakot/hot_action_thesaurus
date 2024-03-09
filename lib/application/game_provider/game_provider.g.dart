// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameHash() => r'266081c765f6ea10cb2d4386d10cfb46d61409bf';

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

abstract class _$Game extends BuildlessAutoDisposeAsyncNotifier<GameModel> {
  late final int wordCount;

  FutureOr<GameModel> build({
    required int wordCount,
  });
}

/// See also [Game].
@ProviderFor(Game)
const gameProvider = GameFamily();

/// See also [Game].
class GameFamily extends Family<AsyncValue<GameModel>> {
  /// See also [Game].
  const GameFamily();

  /// See also [Game].
  GameProvider call({
    required int wordCount,
  }) {
    return GameProvider(
      wordCount: wordCount,
    );
  }

  @override
  GameProvider getProviderOverride(
    covariant GameProvider provider,
  ) {
    return call(
      wordCount: provider.wordCount,
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
  String? get name => r'gameProvider';
}

/// See also [Game].
class GameProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Game, GameModel> {
  /// See also [Game].
  GameProvider({
    required int wordCount,
  }) : this._internal(
          () => Game()..wordCount = wordCount,
          from: gameProvider,
          name: r'gameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$gameHash,
          dependencies: GameFamily._dependencies,
          allTransitiveDependencies: GameFamily._allTransitiveDependencies,
          wordCount: wordCount,
        );

  GameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.wordCount,
  }) : super.internal();

  final int wordCount;

  @override
  FutureOr<GameModel> runNotifierBuild(
    covariant Game notifier,
  ) {
    return notifier.build(
      wordCount: wordCount,
    );
  }

  @override
  Override overrideWith(Game Function() create) {
    return ProviderOverride(
      origin: this,
      override: GameProvider._internal(
        () => create()..wordCount = wordCount,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        wordCount: wordCount,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Game, GameModel> createElement() {
    return _GameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameProvider && other.wordCount == wordCount;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, wordCount.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GameRef on AutoDisposeAsyncNotifierProviderRef<GameModel> {
  /// The parameter `wordCount` of this provider.
  int get wordCount;
}

class _GameProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Game, GameModel>
    with GameRef {
  _GameProviderElement(super.provider);

  @override
  int get wordCount => (origin as GameProvider).wordCount;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
