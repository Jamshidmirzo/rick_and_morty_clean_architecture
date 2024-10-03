import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class ButtonForLang extends StatelessWidget {
  Function()? onTap;
  bool isLang;
  String text;
  String assetPath;
  ButtonForLang(
      {super.key,
      required this.onTap,
      required this.isLang,
      required this.text,
      required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: ListTile(
        trailing: isLang
            ? Icon(
                Icons.done,
                color: Theme.of(context).colorScheme.inversePrimary,
              )
            : null,
        title: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary),
        ),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(assetPath), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
