// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:pixelfield/app/pages/bottle_details/bottle_view.dart' as _i1;
import 'package:pixelfield/app/pages/dashboard/dashboard_page.dart' as _i2;
import 'package:pixelfield/app/pages/sign_in/sign_in_page.dart' as _i3;
import 'package:pixelfield/app/pages/splash/splash_page.dart' as _i4;
import 'package:pixelfield/app/pages/welcome/welcome_page.dart' as _i5;
import 'package:pixelfield/domain/entities/bottle.dart' as _i8;

/// generated route for
/// [_i1.BottlePage]
class BottleRoute extends _i6.PageRouteInfo<BottleRouteArgs> {
  BottleRoute({
    _i7.Key? key,
    required _i8.Bottle bottle,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         BottleRoute.name,
         args: BottleRouteArgs(key: key, bottle: bottle),
         initialChildren: children,
       );

  static const String name = 'BottleRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BottleRouteArgs>();
      return _i1.BottlePage(key: args.key, bottle: args.bottle);
    },
  );
}

class BottleRouteArgs {
  const BottleRouteArgs({this.key, required this.bottle});

  final _i7.Key? key;

  final _i8.Bottle bottle;

  @override
  String toString() {
    return 'BottleRouteArgs{key: $key, bottle: $bottle}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BottleRouteArgs) return false;
    return key == other.key && bottle == other.bottle;
  }

  @override
  int get hashCode => key.hashCode ^ bottle.hashCode;
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardPage();
    },
  );
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute({List<_i6.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.SignInPage();
    },
  );
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashPage();
    },
  );
}

/// generated route for
/// [_i5.WelcomePage]
class WelcomeRoute extends _i6.PageRouteInfo<void> {
  const WelcomeRoute({List<_i6.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.WelcomePage();
    },
  );
}
