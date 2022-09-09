import 'package:epsilon/models/app_state-manager.dart';
import 'package:epsilon/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Epsilon());
}
class Epsilon extends StatefulWidget {
  const Epsilon({Key? key}) : super(key: key);

  @override
  State<Epsilon> createState() => _EpsilonState();
}

class _EpsilonState extends State<Epsilon> {
  final _appStateManager = AppStateManager();
  late AppRouter _appRouter;

  @override
  void initState(){
    super.initState();
    _appRouter = AppRouter(
        appStateManager: _appStateManager
    );
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _appStateManager)
      ],
      child: Consumer<AppStateManager>(
        builder: (context, appStateManager, child){
          return MaterialApp(
            title: "EpsilonApp",
              theme : ThemeData(
                //primaryColor: Colors.deepPurpleAccent[200]
              ),
            home: Router(
              routerDelegate: _appRouter,
              backButtonDispatcher: RootBackButtonDispatcher(),
            ),
          );
        },
      ),
    );
  }
}




