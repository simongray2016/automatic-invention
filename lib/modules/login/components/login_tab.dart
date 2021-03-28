import 'package:flutter/material.dart';
import 'package:myapp/config/themes/theme.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/modules/login/components/sign_in_tab_content.dart';
import 'package:myapp/modules/login/components/sign_up_tab_content.dart';

class LoginTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        width: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabTitle(),
                SizedBox(height: 40),
                SignInTabContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: TabBar(
        labelStyle: Theme.of(context).textTheme.headline4,
        labelColor: BlackColor,
        unselectedLabelColor: MediumGreyColor,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Theme.of(context).primaryColor,
                style: BorderStyle.solid,
                width: 4),
          ),
        ),
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Tab(text: 'Sign in'),
          Tab(text: 'Sign up'),
        ],
      ),
    );
  }
}
