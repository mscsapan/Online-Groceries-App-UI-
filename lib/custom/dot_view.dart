import 'package:flutter/material.dart';

class DotView extends StatelessWidget {
  final int position;
  final int index;

  const DotView({Key? key, required this.position, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: position == index ? 5.0 : 8.0,
      width: position == index ? 18.0 : 8.0,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0), color: Colors.deepOrange),
    );
  }
}
