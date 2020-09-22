library text_gradient;

import 'package:flutter/material.dart';

class TextGradient extends StatelessWidget {
  final String text;
  final Gradient textGradient;
  final TextStyle textStyle;

  TextGradient(
      {@required this.text, this.textStyle, @required this.textGradient})
      : assert(text != null),
        assert(textGradient != null);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) => textGradient
          .createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        text,
        style: textStyle.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
