import 'package:flutter/material.dart';
import 'package:myapp/config/themes/theme.dart';
import 'package:myapp/constants/colors.dart';

class RemindCard extends StatelessWidget {
  const RemindCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          title: Text(
            'ReMind',
            style: Theme.of(context).textTheme.headline4,
          ),
          subtitle: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                    text:
                        'The app will push a notification to remind you update expenditures at every '),
                TextSpan(
                  text: '8:00',
                  style: TextStyleLightTheme.highlight,
                ),
              ],
            ),
          ),
          contentPadding: EdgeInsets.all(0),
          trailing: Icon(
            Icons.edit,
            color: PrimaryColor,
            size: 25,
          ),
          isThreeLine: true,
        ),
      ),
    );
  }
}
