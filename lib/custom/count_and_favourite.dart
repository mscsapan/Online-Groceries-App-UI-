import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries_app_ui/model/product_model.dart';

import 'custom.dart';

class CountAndFavourite extends StatelessWidget {
  final Function() removeCount;
  final Function() addCount;
  final String count;

  const CountAndFavourite(
      {Key? key,
      required this.count,
      required this.addCount,
      required this.removeCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FittedBox(
        child: Row(
          children: [
            IconButton(
                onPressed: removeCount,
                icon: const FaIcon(FontAwesomeIcons.minus, size: 20.0)),
            Container(
              height: 32.0,
              width: 34.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Text(
                count.toString().padLeft(2, '0'),
                style: defaultTextStyle().copyWith(fontSize: 18.0),
              ),
            ),
            IconButton(
                onPressed: addCount,
                icon: const FaIcon(FontAwesomeIcons.plus,
                    size: 20.0, color: Colors.blue))
          ],
        ),
      ),
      trailing: Text(
        '\$${exclusiveProduct[0].price.toString()}',
        style: defaultTextStyle().copyWith(fontSize: 25.0),
      ),
    );
  }
}
