import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';


// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  Function()? onTapContainer;
  Function(String) onChanged;
  TextEditingController textController;
  SearchWidget(
      {super.key,
      required this.onTapContainer,
      required this.onChanged,
      required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              onChanged: (value) => onChanged(value),
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ZoomTapAnimation(
            onTap: onTapContainer,
            child: Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple.shade300),
              child: const Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
