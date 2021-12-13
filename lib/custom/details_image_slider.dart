import 'package:flutter/material.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';

import 'dot_view.dart';

class ImageSlider extends StatelessWidget {
  final double height;
  final double? width;
  final Function(int position) onTap;
  final int? position;
  const ImageSlider(
      {Key? key,
      required this.height,
      this.width,
      required this.onTap,
      this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height * 0.4,
        width: width,
        //alignment: Alignment.center,
        //padding: const EdgeInsets.only(top: 40.0),
        // margin: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: mBackgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: height * 0.36,
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                onPageChanged: onTap,
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Image.asset(
                            'assets/product/apple${index + 1}.png',
                            fit: BoxFit.fill,
                            height: 180.0,
                            width: 180.0,
                          ),
                        )),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (index) => DotView(
                        position: position!, //scrollerController.position,
                        index: index))),
          ],
        ));
  }
}
