import 'package:auto_route/auto_route.dart';
import '../pages/options_page/options_page.dart';
import '../pages/splash_page/splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: OptionsRoute.page, initial: true),
      ];
}
