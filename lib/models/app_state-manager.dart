import 'package:flutter/material.dart';
import 'dart:async';

class EpsilonTab {
  static const int dashboard = 0;
  static const int updates = 1;
}

class AppStateManager extends ChangeNotifier{
  bool _initialized = false;
  bool _loggedIn = false;
  int _selectedTab = EpsilonTab.dashboard;

  late String _username;
  String get username => _username;
  setname(String username) {
    _username = username;
    notifyListeners();
  }



  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  int get getSelectedTab => _selectedTab;


  void initializeApp() {
    Timer(
      const Duration(milliseconds: 5000),
        (){
        _initialized = true;
        notifyListeners();
        },
    );
  }

  void login(){
    _loggedIn = true;
    notifyListeners();
  }

  void goToTab(index){
    _selectedTab = index;
    notifyListeners();
  }

  void logout(){
    _loggedIn = false;
    _initialized = false;
    _selectedTab = 0;

    initializeApp();
    notifyListeners();
  }


}
