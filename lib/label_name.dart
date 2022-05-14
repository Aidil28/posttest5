import 'package:flutter/material.dart';

class LabelSubHeader extends StatelessWidget {
  final String nameHeader;

  LabelSubHeader(this.nameHeader);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        nameHeader,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xff020202),
        ),
      ),
    );
  }
}
