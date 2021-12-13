import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';
import 'package:online_groceries_app_ui/controller/scroll_controller.dart';
import 'package:online_groceries_app_ui/custom/count_and_favourite.dart';
import 'package:online_groceries_app_ui/custom/custom.dart';
import 'package:online_groceries_app_ui/custom/details_expansion.dart';
import 'package:online_groceries_app_ui/custom/details_image_slider.dart';
import 'package:online_groceries_app_ui/custom/dot_view.dart';
import 'package:online_groceries_app_ui/model/product_model.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  final String? title;
  final String? image;
  final double? price;
  const ProductDetails({Key? key, this.title, this.image, this.price})
      : super(key: key);
  Widget divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Divider(color: Colors.grey, thickness: 1.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mWhite,
        extendBodyBehindAppBar: true,
        body: SizedBox(
          height: height,
          width: width,
          //padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Consumer<ScrollerController>(
            builder: (context, scrollerController, child) {
              return ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  //const SizedBox(height: 20.0),
                  ImageSlider(
                      height: height,
                      onTap: (index) => scrollerController.getScroll(index),
                      position: scrollerController.position),
                  ListTile(
                    leading: Text(title!, style: defaultTextStyle()),
                    trailing: IconButton(
                      onPressed: () => scrollerController.isFavourite(),
                      icon: scrollerController.favourite
                          ? const FaIcon(FontAwesomeIcons.heart)
                          : const FaIcon(FontAwesomeIcons.solidHeart,
                              color: Colors.red),
                    ),
                  ),
                  CountAndFavourite(
                    addCount: () =>
                        scrollerController.incrementOrDecrementProduct(2),
                    removeCount: () =>
                        scrollerController.incrementOrDecrementProduct(1),
                    count: scrollerController.count.toString(),
                  ),
                  divider(),
                  const DetailsExpansion(title: 'Product Details'),
                  divider(),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      /*trailing: IconButton(
                        onPressed: () => scrollerController.isExpanded(),
                        icon: Icon(scrollerController.expand
                            ? FontAwesomeIcons.angleRight
                            : FontAwesomeIcons.angleDown),
                      ),*/
                      collapsedTextColor: Colors.black87,
                      iconColor: Colors.black87,
                      collapsedIconColor: Colors.black87,
                      title: Row(
                        children: [
                          Text('Notification', style: defaultTextStyle()),
                          const Spacer(),
                          Chip(
                              padding: const EdgeInsets.all(2.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0)),
                              label: const Text('100gr'))
                        ],
                      ),
                      childrenPadding:
                          const EdgeInsets.symmetric(horizontal: 12.0)
                              .copyWith(top: 0.0),
                      children: [
                        Text(
                          '''An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii,''',
                          style: defaultTextStyle().copyWith(fontSize: 14.0),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  divider(),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      /*trailing: IconButton(
                        onPressed: () => scrollerController.isExpanded(),
                        icon: Icon(scrollerController.expand
                            ? FontAwesomeIcons.angleRight
                            : FontAwesomeIcons.angleDown),
                      ),*/
                      textColor: Colors.black,
                      collapsedTextColor: Colors.black87,
                      title: Row(
                        children: [
                          Text('Review', style: defaultTextStyle()),
                          const Spacer(),
                          Row(
                            children: List.generate(
                              4,
                              (index) => const Padding(
                                padding: EdgeInsets.only(left: 2.0),
                                child: Icon(Icons.star,
                                    color: Colors.deepOrange, size: 20.0),
                              ),
                            ),
                          )
                        ],
                      ),
                      childrenPadding:
                          const EdgeInsets.symmetric(horizontal: 12.0)
                              .copyWith(top: 0.0),
                      children: [
                        Text(
                          '''An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii,''',
                          style: defaultTextStyle().copyWith(fontSize: 14.0),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  //const Spacer(),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.76,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 14.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green[900]),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0))))),
                      onPressed: () {},
                      child: Text('Add To Basket',
                          style: defaultTextStyle().copyWith(color: mWhite)),
                    ),
                  ),
                  // const SizedBox(height: 20.0),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
