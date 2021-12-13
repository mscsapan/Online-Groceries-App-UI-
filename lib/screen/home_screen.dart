import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';
import 'package:online_groceries_app_ui/controller/scroll_controller.dart';
import 'package:online_groceries_app_ui/custom/custom.dart';
import 'package:online_groceries_app_ui/custom/dot_view.dart';
import 'package:online_groceries_app_ui/custom/heading.dart';
import 'package:online_groceries_app_ui/model/product_model.dart';
import 'package:online_groceries_app_ui/screen/cart_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'assets/banner/banner4.jpg',
    'assets/banner/banner2.png',
    'assets/banner/banner5.jpg',
    'assets/banner/banner6.png',
  ];

  final List<String> pulse = [
    'assets/images/pulse1.png',
    'assets/images/rice.png',
    'assets/images/pulse4.png',
    'assets/images/flour.png',
    'assets/images/cosmetics.png',
    'assets/images/pulse5.png',
  ];

  var title = ['Pulse', 'Rice', 'Spicy', 'Wheat Flour', 'Cosmetics', 'Grains'];

  final List<Product> addToCart = [];

  Widget bannerImage(int position) {
    return Container(
      margin: const EdgeInsets.only(left: 14.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(images[position], fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double padding = 14.0;
    final controller = Provider.of<ScrollerController>(context, listen: true);
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: ListView(
          children: [
            topCarrotImage(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: mWhite,
                    size: 20.0,
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    'Nikhunja, Dhaka',
                    style: GoogleFonts.openSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0)),
                    hintText: 'Search product',
                    filled: true,
                    fillColor: const Color(0xffF2F3F2),
                    suffixIcon: const Icon(FontAwesomeIcons.times,
                        color: mBlack, size: 22.0),
                    prefixIcon: const Padding(
                        padding: EdgeInsets.only(bottom: 2.0),
                        child: Icon(Icons.search, color: mBlack))),
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: height * 0.18,
              width: width,
              child: Stack(
                children: [
                  PageView(
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    onPageChanged: (index) => controller.getScroll(index),
                    children: List.generate(
                        images.length, (index) => bannerImage(index)),
                  ),
                  /*   Positioned(
                      top: 14.0,
                      right: width / 6.0,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Fresh Vegetable\n',
                              style: GoogleFonts.raleway(
                                  color: mBlack,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: 'Get up to 40% Off',
                              style: GoogleFonts.roboto(
                                  color: mBlack, fontWeight: FontWeight.w400))
                        ]),
                      )),*/
                  Positioned(
                    bottom: 10.0,
                    right: width / 2.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        images.length,
                        (index) => DotView(
                            position: controller.position, index: index),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Heading(title: 'Exclusive Offer'),
            SizedBox(
              height: height * 0.3,
              width: width,
              child: ListView.builder(
                  itemCount: exclusiveProduct.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, position) {
                    Product item = exclusiveProduct[position];
                    return Container(
                      height: height * 0.3,
                      width: width / 2.2,
                      margin: const EdgeInsets.only(left: 14.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                                height: height * 0.15,
                                child:
                                    Image.asset(item.image, fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    item.name,
                                    style: GoogleFonts.poppins(
                                        color: mBlack,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  item.quantity,
                                  style: GoogleFonts.poppins(
                                    color: mBlack,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$${item.price.toString()}',
                                        style: GoogleFonts.playfairDisplay(
                                            color: mBlack,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w800)),
                                    InkWell(
                                      onTap: () {
                                        CartScreen(receiveProduct: (cartItem) {
                                          setState(() {
                                            addToCart.add(cartItem);
                                          });
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content:
                                                Text('${item.name} is added'),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 35.0,
                                        width: 36.0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            color: const Color(0xFF53B175)),
                                        child: const Icon(Icons.add,
                                            color: mWhite),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const Heading(title: 'Best Selling'),
            SizedBox(
              height: height * 0.3,
              width: width,
              child: ListView.builder(
                  itemCount: bestSellerProduct.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, position) {
                    Product item = bestSellerProduct[position];
                    return Container(
                      height: height * 0.3,
                      width: width / 2.2,
                      margin: const EdgeInsets.only(left: 14.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                                height: height * 0.15,
                                child:
                                    Image.asset(item.image, fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    item.name,
                                    style: GoogleFonts.poppins(
                                        color: mBlack,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(item.quantity,
                                    style: GoogleFonts.poppins(
                                        color: mBlack,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$${item.price.toString()}',
                                        style: GoogleFonts.playfairDisplay(
                                            color: mBlack,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w800)),
                                    InkWell(
                                      onTap: () => debugPrint('$position'),
                                      child: Container(
                                        height: 35.0,
                                        width: 36.0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            color: const Color(0xFF53B175)),
                                        child: const Icon(Icons.add,
                                            color: mWhite),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const Heading(title: 'Groceries'),
            SizedBox(
              height: height * 0.12,
              width: width,
              child: ListView.builder(
                  itemCount: pulse.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, position) {
                    return Container(
                      height: height * 0.1,
                      width: width / 1.6,
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF8A44C),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(pulse[position],
                                height: 90.0, width: 90),
                            const SizedBox(width: 5.0),
                            Text(
                              title[position],
                              style: GoogleFonts.poppins(
                                color: mBlack,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
