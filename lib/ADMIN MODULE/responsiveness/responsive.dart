import 'package:flutter/cupertino.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;


  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,

  }) : super(key: key);

  static bool issmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool ismediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize &&
          MediaQuery.of(context).size.width < largeScreenSize;

  static bool islargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool iscustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
          MediaQuery.of(context).size.width <= customScreenSize;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      //_width>= largeScreenSize?largeScreen:(_width<largeScreenSize && _width>=mediumScreenSize)?mediumScreen:smallScreen;
      if (_width >= largeScreenSize) {
        return largeScreen;
      }
      else if (_width < largeScreenSize && _width >= mediumScreenSize) {
        return mediumScreen;// ?? largeScreen;
      }
      else {
        return smallScreen;// ?? largeScreen;
      }
    });
  }
}