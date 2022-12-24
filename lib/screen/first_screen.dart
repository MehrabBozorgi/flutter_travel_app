import 'package:flutter/material.dart';
import 'package:flutter_travel_app/tools/colors.dart';
import 'package:flutter_travel_app/tools/radius.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.015,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu_rounded,
                        color: darkColor,
                      ),
                      ClipRRect(
                        borderRadius: getBorderRadiusWidget(context, 1),
                        child: Container(
                          color: Colors.orange.shade100,
                          child: Image.asset(
                            'pic0.png',
                            width: width * 0.08,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.02,
                  ),
                  width: width,
                  child: const Text(
                    'Where you wanna go?',
                    style: textStyle2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: width * 0.04),
                        width: width * 0.75,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          boxShadow: const [
                            BoxShadow(
                              color: shadowColor,
                              blurRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],
                          borderRadius: getBorderRadiusWidget(context, 0.03),
                        ),
                        child: const Text(
                          'Search your destination',
                          style: textStyle9,
                        ),
                      ),
                      Container(
                        width: width * 0.14,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: getBorderRadiusWidget(context, 0.03),
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor.withOpacity(0.8),
                              offset: const Offset(3, 3),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.search_rounded,
                          color: whiteColor,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.005,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: height * 0.03,
                  ),
                  width: width,
                  height: height * 0.1,
                  child: Row(
                    children: [
                      TitlesWidget(
                        width: width,
                        height: height,
                        color: color1,
                        icon: Icons.airplanemode_on_outlined,
                        title: 'Flight',
                      ),
                      TitlesWidget(
                        width: width,
                        height: height,
                        color: color2,
                        icon: Icons.hotel_outlined,
                        title: 'Hotel',
                      ),
                      TitlesWidget(
                        width: width,
                        height: height,
                        color: color3,
                        icon: Icons.food_bank_outlined,
                        title: 'Food',
                      ),
                      TitlesWidget(
                        width: width,
                        height: height,
                        color: color4,
                        icon: Icons.event,
                        title: 'Event',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'All',
                      style: textStyle12,
                    ),
                    Text(
                      'Popular',
                      style: textStyle10,
                    ),
                    Text(
                      'New',
                      style: textStyle12,
                    ),
                    Text(
                      'Top 10',
                      style: textStyle12,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PlacesWidget(
                        width: width,
                        height: height,
                        pic: 'pic1.jpg',
                      ),
                      PlacesWidget(
                        width: width,
                        height: height,
                        pic: 'pic2.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlacesWidget extends StatelessWidget {
  const PlacesWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.pic,
  }) : super(key: key);

  final double width;
  final double height;
  final String pic;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: getBorderRadiusWidget(context, 0.04),
          child: Image.asset(
            pic,
            width: width * 0.75,
            height: height * 0.39,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          width: width * 0.74,
          height: height * 0.09,
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          margin: EdgeInsets.symmetric(horizontal: width * 0.03),
          decoration: BoxDecoration(
            borderRadius: getBorderRadiusWidget(context, 0.04),
            gradient: const LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Cappadocia',
                    style: textStyle6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: whiteColor,
                      ),
                      Text(
                        'Mazaco, Turkey',
                        style: textStyle7,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.015,
                  vertical: height * 0.005,
                ),
                margin: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: getBorderRadiusWidget(context, 1),
                ),
                child: const Text(
                  '\$660',
                  style: textStyle7,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TitlesWidget extends StatelessWidget {
  const TitlesWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: width * 0.04),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: getBorderRadiusWidget(context, 0.04),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.8),
              offset: const Offset(3, 3),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: whiteColor,
            ),
            Text(
              title,
              style: textStyle7,
            ),
          ],
        ),
      ),
    );
  }
}
