import 'package:flutter/material.dart';
import 'package:plant_app/constans.dart';

import 'featured_plant.dart';
import 'header_with_search.dart';
import 'recomend_plats.dart';
import 'title_with_more_btn.dart';

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
          TitleWiteMoreBtn(press: () {}, title: 'Recomended'),
          const RecomendsPlants(),
          TitleWiteMoreBtn(press: () {}, title: 'Featured Plants'),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
