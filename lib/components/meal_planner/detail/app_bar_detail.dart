import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarDetail extends StatelessWidget {
  const AppBarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
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
