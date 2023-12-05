import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarMealPlanner extends StatelessWidget {
  const AppBarMealPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading: GestureDetector(
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 30, height: 30,
          decoration: BoxDecoration(
              color: const Color(0xFFF7F8F8),
              borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset("assets/icons/Arrow.svg"),
        ),
      ),

      title: const Center(child: Text("Breakfast", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),

      actions: [
        GestureDetector(
          onTap: (){},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 30, height: 30,
            decoration: BoxDecoration(
                color: const Color(0xFFF7F8F8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset("assets/icons/Setting.svg"),
          ),
        ),
      ],
    );
  }
}
