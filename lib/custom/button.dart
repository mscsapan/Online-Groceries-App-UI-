import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Button extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback onTap;
  final Color bgColor;

  Button(this.title, this.icon, this.onTap, this.bgColor);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 0.14,
        child: ElevatedButton.icon(
          icon: FaIcon(icon),
          onPressed: onTap,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(bgColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)))),
          label: Text(title!),
        ),
      ),
    );
  }
}
