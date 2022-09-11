import 'package:epsilon/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'test.dart';

class HomeScreen extends StatefulWidget {
  static MaterialPage page(int currentTab) {
    return MaterialPage(
      name: EpsilonPages.home,
      key: ValueKey(EpsilonPages.home),
      child: HomeScreen(
        currentTab: currentTab,
      ),
    );
  }

  const HomeScreen({
    Key? key,
    required this.currentTab,
  }) : super(key: key);
  final int currentTab;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static List<Widget> pages = <Widget>[const Dashboard(), const Updates()];

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateManager>(builder: (
      context,
      appStateManager,
      child,
    ) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Epsilon',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          body: IndexedStack(
            index: widget.currentTab,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor:
                  Theme.of(context).textSelectionTheme.selectionColor,
              currentIndex: widget.currentTab,
              onTap: (index) {
                Provider.of<AppStateManager>(context, listen: false)
                    .goToTab(index);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'DashBoard',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'Updates',
                ),
              ]));
    });
  }
}
