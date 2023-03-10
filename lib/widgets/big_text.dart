import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {Key? key,
        this.color = const Color(0xFF332d2b),
        required this.text,
        this.overFlow = TextOverflow.ellipsis,
        this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: color,
            fontSize: size == 0 ? 16 : size,
            fontWeight: FontWeight.w600,
            letterSpacing: 1),
      )
    );
  }
}