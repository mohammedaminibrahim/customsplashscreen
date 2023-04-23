import 'package:customsplashscreen/src/constants/color_strings.dart';
import 'package:customsplashscreen/src/constants/image_strings.dart';
import 'package:customsplashscreen/src/constants/sizes.dart';
import 'package:customsplashscreen/src/constants/text_strings.dart';
import 'package:customsplashscreen/src/features/authentication/screens/welcome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;


  @override
  void initState() {
    startAninamation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
           Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: animate ? 0 : -30,
                  left: animate ? 0 : -30,
                  child: Image(image: AssetImage(tSplashTopIcon)
                  )
              ),
              Positioned(
                top: 80,
                  left: tDefaultSize,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(tAppName),
                      Text(tAppTagLine)
                    ],
                  )
              ),
              const AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
               bottom: 100,
                  child: Image(image: AssetImage(tSplashImage),
                  )
             ),
               AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: 40,
                  right: tDefaultSize,
                  child: Container(
                    width: tSplashContainerSize,
                    height: tSplashContainerSize,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tPrimaryColor,
                    ),
                  ))
            ],
          ),

    );
  }

  Future startAninamation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;

    });
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }
}
