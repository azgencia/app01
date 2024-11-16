import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/main_screen.dart';
import 'screens/options_screen.dart';
import 'screens/more_games_screen.dart';
import 'screens/remove_ads_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(ColoringApp());
  });
}

class ColoringApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        '/options': (context) => OptionsScreen(),
        '/more_games': (context) => MoreGamesScreen(),
        '/remove_ads': (context) => RemoveAdsScreen(),
      },
    );
  }
}
