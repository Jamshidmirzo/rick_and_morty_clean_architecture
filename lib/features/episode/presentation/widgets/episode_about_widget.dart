import 'package:flutter/material.dart';

class EpisodeAboutWidget extends StatelessWidget {
  final String firstText;
  final String secondText;

  const EpisodeAboutWidget(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '$secondText : ',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              firstText,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
