import 'package:customsplashscreen/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: const [
              Positioned(
                top: 0,
                  left: 0,
                  child: Image(image: AssetImage(tSplashTopIcon)))
            ],
          ),
        ),
    );
  }
}
