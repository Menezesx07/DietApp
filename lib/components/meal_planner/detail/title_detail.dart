import 'package:flutter/material.dart';

class TitleDetail extends StatefulWidget {
  const TitleDetail({super.key, required this.name});

  final String name;

  @override
  State<TitleDetail> createState() => _TitleDetailState();
}

class _TitleDetailState extends State<TitleDetail> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: const TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),
            ),
            const Text(
              'by James Ruth',
              style: TextStyle(fontWeight: FontWeight.w400 ,fontSize: 12),
            ),
          ],
        ),

        const Icon(Icons.favorite, color: Colors.red)
      ],
    );
  }
}
