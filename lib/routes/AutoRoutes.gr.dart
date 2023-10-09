// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:doctorx_flutter/screens/dashboardscreen.dart' as _i1;
import 'package:doctorx_flutter/screens/login.dart' as _i2;
import 'package:doctorx_flutter/screens/splashscreen.dart' as _i3;
import 'package:flutter/material.dart' as _i5;

abstract class $AutoRoutes extends _i4.RootStackRouter {
  $AutoRoutes({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DashboardRoutes.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardScreen(),
      );
    },
    LoginRoutes.name: (routeData) {
      final args = routeData.argsAs<LoginRoutesArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    SplashScreen.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardRoutes extends _i4.PageRouteInfo<void> {
  const DashboardRoutes({List<_i4.PageRouteInfo>? children})
      : super(
          DashboardRoutes.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoutes';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoutes extends _i4.PageRouteInfo<LoginRoutesArgs> {
  LoginRoutes({
    _i5.Key? key,
    required dynamic Function(bool) onResult,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          LoginRoutes.name,
          args: LoginRoutesArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoutes';

  static const _i4.PageInfo<LoginRoutesArgs> page =
      _i4.PageInfo<LoginRoutesArgs>(name);
}

class LoginRoutesArgs {
  const LoginRoutesArgs({
    this.key,
    required this.onResult,
  });

  final _i5.Key? key;

  final dynamic Function(bool) onResult;

  @override
  String toString() {
    return 'LoginRoutesArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i3.SplashScreen]
class SplashScreen extends _i4.PageRouteInfo<void> {
  const SplashScreen({List<_i4.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
