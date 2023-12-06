import 'package:diet_app/pages/tutorial_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Color(0xff92A3FD),
              ],
            )),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            const SizedBox(height: 40),

            Column(
              children: [
                SvgPicture.asset("assets/images/logo.svg"),
                const SizedBox(height: 10),
                const Text("Everbody Can Train", style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: SizedBox(
                width: 300,
                height: 50,
                child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const TutorialScreen(),
                        ),
                      );
                    },
                    child: const Text("Get Started", style: TextStyle(color: Colors.blue),)
                ),
              ),
            )
          ],

        ),

      ),
    );
  }
}
