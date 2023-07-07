import 'package:flutter/material.dart';

class StreamxText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;
  final VoidCallback? onClick;

  const StreamxText({
    required this.text,
    this.size,
    this.fontWeight,
    this.color,
    this.wordSpacing,
    this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? Text(
        text,
        style: TextStyle(
          fontSize: size ?? 16,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? Colors.white,
          wordSpacing: wordSpacing,
        ),
      )
          : TextButton(
        onPressed: () {
          onClick.call();
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: size ?? 16,
            fontWeight: fontWeight ?? FontWeight.w500,
            color: color ?? Colors.white,
            wordSpacing: wordSpacing,
          ),
        ),
      ),
      );
  }
}