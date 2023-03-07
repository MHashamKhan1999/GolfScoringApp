import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/utils/appConstant.dart';

class LabelText extends StatelessWidget {
  final String _text;

  const LabelText(this._text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        _text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppConstant.textColor,
        )

    );
  }
}
