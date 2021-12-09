import 'package:flutter/material.dart';
import 'package:plant_app/constans.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(country: 'Russia', price: 400, title: 'Angelica'),
          const SizedBox(height: kDefaultPadding),
          BottomBtns(size: size),
        ],
      ),
    );
  }
}

class BottomBtns extends StatelessWidget {
  const BottomBtns({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            onPressed: () {},
            child: const Text("Buy Now"),
            style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
              primary: Colors.white,
              backgroundColor: kPrimaryColor,
              textStyle: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text("Buy Now"),
            style: TextButton.styleFrom(
              primary: Colors.black,
              // backgroundColor: kPrimaryColor,
              textStyle: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
