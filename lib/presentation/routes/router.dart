import 'package:auto_route/auto_route.dart';
import '../pages/game_options_page/game_options_page.dart';
import '../pages/player_list_page/player_list_page.dart';
import '../pages/splash_page/splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: GameOptionsRoute.page),
        AutoRoute(page: PlayerListRoute.page, initial: true),
      ];
}
