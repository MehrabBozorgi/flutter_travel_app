import 'package:flutter/material.dart';

getShapeWidget(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(width * radius),
  );
}

getBorderRadiusWidget(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return BorderRadius.circular(width * radius);
}

getTopBorderRadiusWidget(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return BorderRadius.only(
    topRight: Radius.circular(width * radius),
    topLeft: Radius.circular(width * radius),
  );
}
