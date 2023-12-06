// ignore_for_file: deprecated_member_use

import 'package:diet_app/pages/meal_planner/breakfast_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: const [
          SplashPages("assets/images/splash1.png"),
          SplashPages("assets/images/splash2.png"),
          SplashPages("assets/images/splash3.png"),
          SplashPages("assets/images/splash4.png"),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff92A3FD),
        shape: const CircleBorder(),
        child: SvgPicture.asset("assets/icons/ArrowRight2.svg", color: Colors.white),
        onPressed: () {
          if (_currentPage < 3) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          } else {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const BreakfastPage(),
                ),
              );
          }
        },
      ),

    );
  }
}

class SplashPages extends StatelessWidget {

  final String url;

  const SplashPages(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

