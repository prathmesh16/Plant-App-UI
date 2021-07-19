import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app_ui/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomended_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recomended", press: () {}),
          RecomendedPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
