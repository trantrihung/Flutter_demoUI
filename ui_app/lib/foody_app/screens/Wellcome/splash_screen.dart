import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/foody/bibimbap.png",
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 10,
            ),
            const Text(
              "Foody",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SpinKitCircle(
          color: Colors.green,
          size: 80.0,
        ),
      ],
    );
  }
}
