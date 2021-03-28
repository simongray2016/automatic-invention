
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Language',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              children: [
                Text(
                  'English',
                  style: TextStyle(
                    color: PrimaryColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  color: LightGreyColor,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
