import 'package:customsplashscreen/src/features/authentication/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
