import 'package:customsplashscreen/src/constants/color_strings.dart';
import 'package:customsplashscreen/src/constants/image_strings.dart';
import 'package:customsplashscreen/src/constants/sizes.dart';
import 'package:customsplashscreen/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
           Stack(
            children: [
             const Positioned(
                top: 0,
                  left: 0,
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
             const Positioned(
               bottom: 100,
                  child: Image(image: AssetImage(tSplashImage),
                  )
             ),
              Positioned(
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
}
