// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GameOptionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GameOptionsPage(),
      );
    },
    PlayerListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlayerListPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [GameOptionsPage]
class GameOptionsRoute extends PageRouteInfo<void> {
  const GameOptionsRoute({List<PageRouteInfo>? children})
      : super(
          GameOptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameOptionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlayerListPage]
class PlayerListRoute extends PageRouteInfo<void> {
  const PlayerListRoute({List<PageRouteInfo>? children})
      : super(
          PlayerListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlayerListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
