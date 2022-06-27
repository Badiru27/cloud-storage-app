// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/drive_detail/drive_detail_view.dart';
import '../ui/home/home_view.dart';
import '../ui/menue/menue_view.dart';
import '../ui/onboarding/onboarding_view.dart';
import '../ui/starup/startup_view.dart';
import '../ui/subscribe/subscribe_view.dart';

class Routes {
  static const String startUpView = '/start-up-view';
  static const String subscribeView = '/subscribe-view';
  static const String menueView = '/menue-view';
  static const String homeView = '/home-view';
  static const String onboardingView = '/';
  static const String driveDetailsView = '/drive-details-view';
  static const all = <String>{
    startUpView,
    subscribeView,
    menueView,
    homeView,
    onboardingView,
    driveDetailsView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.subscribeView, page: SubscribeView),
    RouteDef(Routes.menueView, page: MenueView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.driveDetailsView, page: DriveDetailsView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    SubscribeView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SubscribeView(),
        settings: data,
      );
    },
    MenueView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const MenueView(),
        settings: data,
      );
    },
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    OnboardingView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const OnboardingView(),
        settings: data,
      );
    },
    DriveDetailsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const DriveDetailsView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  HomeViewArguments({this.key});
}
