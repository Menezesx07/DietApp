import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarMealPlanner extends StatelessWidget {
  const SearchBarMealPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.10),
                blurRadius: 40, spreadRadius: 0.0
            )
          ]
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Pancake",
            filled: true,
            fillColor: Colors.white,

            prefixIcon: Padding(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset("assets/icons/Search.svg"),
            ),

            //forçando a ficar do tamanho do container do textfield
            // e usando o container para limitar o tamnho lateralmente
            suffixIcon: SizedBox(
              width: 100,
              child: IntrinsicHeight(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      thickness: 0.3,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset("assets/icons/Filter.svg"),
                    ),
                  ],
                ),
              ),
            ),

            contentPadding: const EdgeInsets.all(15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
            )
        ),
      ),
    );
  }
}
