import 'package:epsilon/screens/homeScreen.dart';
import 'package:epsilon/screens/loginScreen.dart';
import 'package:epsilon/screens/landingPage.dart';
import 'package:epsilon/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;

  AppRouter({required this.appStateManager})
      : navigatorKey = GlobalKey<NavigatorState>() {
    appStateManager.addListener(notifyListeners);
  }

  @override
  void dispose() {
    appStateManager.removeListener(notifyListeners);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _handlePopPage,
      pages: [
        if (!appStateManager.isInitialized) SplashScreen.page(),
    if (appStateManager.isInitialized && !appStateManager.isLanded)
      LandingPage.page(),
        if (appStateManager.isLanded && !appStateManager.isLoggedIn)
          LoginScreen.page(),
        if (appStateManager.isInitialized && appStateManager.isLoggedIn)
          HomeScreen.page(appStateManager.getSelectedTab),
      ],
    );
  }

  bool _handlePopPage(Route<dynamic> route, result) {
    if (!route.didPop(result)) {
      return false;
    }

    return true;
  }

  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
