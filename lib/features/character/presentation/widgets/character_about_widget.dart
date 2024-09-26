import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/extensions/extension.dart';

class CharacterAboutWidget extends StatelessWidget {
  final String firstText;
  final String secondText;

  const CharacterAboutWidget(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '$secondText :  ',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Expanded(
              child: Text(
                firstText,
                style: const TextStyle(
                    fontSize: 18, overflow: TextOverflow.ellipsis),
              ),
            )
          ],
        ),
        20.sH(),
      ],
    );
  }
}
