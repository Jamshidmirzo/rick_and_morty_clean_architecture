import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ErrorWidgetRick extends StatelessWidget {
  String? message;
  ErrorWidgetRick({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message ?? 'Smth get wrong',
      ),
    );
    
  }
}
