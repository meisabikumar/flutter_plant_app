import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constans.dart';

import 'header_with_search.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // provides height and width of device
    Size size = MediaQuery.of(context).size;

    // it enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(size: size),
        ],
      ),
    );
  }
}
