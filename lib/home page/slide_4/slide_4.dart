import 'package:flutter/material.dart';
import '../../theme.dart';

class Slide4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text('Slide ke-4', style: kTextBold.copyWith(fontSize: 20)),
    );
  }
}
