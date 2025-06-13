import 'package:auto_route/auto_route.dart';
import 'package:pixelfield/core/autoroutes/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: DashboardRoute.page),
    AutoRoute(page: BottleRoute.page),
  ];
}
