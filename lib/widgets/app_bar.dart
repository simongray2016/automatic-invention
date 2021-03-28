import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/images_path.dart';

AppBar appBarWithAccountAvatar(Size size, BuildContext context) {
  goBack() {
    if (!!Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  return AppBar(
    actions: [],
    toolbarHeight: size.height * 0.15,
    shadowColor: TransparentColor,
    leading: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
            child: Icon(Icons.arrow_back_ios_outlined),
            onTap: () => goBack(),
          ),
        ),
      ],
    ),
    title: Column(
      children: [
        Container(
          height: 70,
          width: 70,
          child: CircleAvatar(
            child: Image.asset(
              DefaultImagePath,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Simon Gray ',
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    ),
    centerTitle: true,
  );
}
