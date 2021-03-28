import 'package:flutter/material.dart';
import 'package:myapp/constants/images_path.dart';
import 'package:myapp/modules/login/components/login_tab.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 60, 16, 16),
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(SavingMoneyIconPath),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'saving money'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 17,
                ),
                LoginTab()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
