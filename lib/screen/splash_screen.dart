import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/snoopy.png',
                  width: 300,
                ),
                const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.amber))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
