import 'package:auto_route/auto_route.dart';
import 'package:doctorx_flutter/routes/AutoRoutes.gr.dart';
import 'package:doctorx_flutter/routes/authguard.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AutoRoutes extends $AutoRoutes {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: SplashScreen.page,
            path: '/',
            initial: true,
            keepHistory: false), //dont save in stack

        AutoRoute(page: DashboardRoutes.page, guards: [AuthGuard()]),

        AutoRoute(
            page: LoginRoutes.page,
            path: '/login'), //security of login check here

        //PRivate
      ];
}
