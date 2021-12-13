import 'package:flutter/material.dart';

import 'custom.dart';

class DetailsExpansion extends StatelessWidget {
  final String title;
  final String details;

  const DetailsExpansion(
      {Key? key,
      required this.title,
      this.details =
          'An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: true,
        collapsedTextColor: Colors.black87,
        title: Text(title, style: defaultTextStyle()),
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 12.0).copyWith(top: 0.0),
        children: [
          Text(
            details,
            style: defaultTextStyle().copyWith(fontSize: 14.0),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
