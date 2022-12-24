import 'package:flutter/material.dart';
import 'package:flutter_travel_app/tools/radius.dart';

import '../tools/colors.dart';
import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String desc =
        'Cappadocia hot air balloon can be pricey but it all comes down to what you may want to be included in the price. The price to ride a hot air balloon is in the range between \$140 and \$250 (€125 – €220) per person.';
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: width,
            height: height,
            child: Stack(
              children: [
                Image.asset(
                  'pic3.jpg',
                  width: width,
                  height: height * 0.6,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: width,
                    height: height * 0.41,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: getTopBorderRadiusWidget(context, 0.09),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.04,
                        vertical: height * 0.01,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: height * 0.005),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    ' Cappadocia',
                                    style: textStyle2,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        '4.9 (review)',
                                        style: textStyle13,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '5-7 days',
                                    style: textStyle13,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.attach_money_rounded,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        '2400',
                                        style: textStyle2,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            desc,
                            style: textStyle9,
                          ),
                          SizedBox(height: height * 0.005),
                          Container(
                            width: width,
                            height: height * 0.08,
                            child: Row(
                              children: [
                                MoreInfoWidget(
                                  width: width,
                                  height: height,
                                  title1: 'Now temp',
                                  title2: '29',
                                ),
                                MoreInfoWidget(
                                  width: width,
                                  height: height,
                                  title1: 'Max temp',
                                  title2: '10',
                                ),
                                MoreInfoWidget(
                                  width: width,
                                  height: height,
                                  title1: 'Avg temp',
                                  title2: '29',
                                ),
                                MoreInfoWidget(
                                  width: width,
                                  height: height,
                                  title1: 'Min temp',
                                  title2: '-7',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              backgroundColor: primaryColor,
                              shape: getShapeWidget(context, 0.04),
                              fixedSize: Size(width, height * 0.065),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Book Now',
                              style: textStyle6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Container(
                    padding: EdgeInsets.all(width * 0.02),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: getBorderRadiusWidget(context, 0.02),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: darkColor,
                    ),
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

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  final double width;
  final double height;

  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        margin: EdgeInsets.only(right: width * 0.03),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: getBorderRadiusWidget(context, 0.04),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 5,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title1,
              style: textStyle9,
            ),
            Text(
              title2,
              style: textStyle12,
            ),
          ],
        ),
      ),
    );
  }
}
