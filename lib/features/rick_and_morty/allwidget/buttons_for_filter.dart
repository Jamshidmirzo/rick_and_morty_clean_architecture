// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class ButtonsForFilter extends StatelessWidget {
  String text;
  Function() onTap;
   ButtonsForFilter({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_sharp,
        ),
      ),
    );
    
  }
}
