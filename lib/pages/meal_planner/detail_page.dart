// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/meal_planner/detail/description.dart';
import '../../components/meal_planner/detail/title_detail.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.name, required this.url, required this.boxColors});

  final String name;
  final String url;
  final Color boxColors;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.boxColors,
      body: CustomScrollView(
        slivers: [
          const SliverPadding(padding: EdgeInsets.only(top: 16.0)),
          //item a ser contraido
          SliverAppBar(

            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 30,
                height: 30,
                child: SvgPicture.asset("assets/icons/Arrow.svg", color: Colors.white),
              ),
            ),

            actions: [
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 30,
                height: 30,
                child: SvgPicture.asset("assets/icons/Setting.svg", color: Colors.white),
              ),
            ],

            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            backgroundColor: widget.boxColors,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                //pading na imagem em relação ao appbar
                padding: const EdgeInsets.only(top: 80),
                child: SvgPicture.asset(
                  widget.url,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),

          //coluna que vai ficar fica em relação ao tamanho, porém scrollavel
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          child: Container(
                              width: 70,
                              height: 5,
                              color: Colors.grey.withOpacity(0.5)),
                        ),

                        const SizedBox(height: 30),

                        TitleDetail(name: widget.name),

                        const SizedBox(height: 20),

                        const DescriptionDetail(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
