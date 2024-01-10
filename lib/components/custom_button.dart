import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color color;
  final EdgeInsets padding;

  const CustomButton({
    Key? key,
    this.color = const Color(0xFF00BF6D),
    required this.onPressed,
    this.padding = const EdgeInsets.all(10),
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      padding: padding,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}