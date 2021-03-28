import 'package:flutter/material.dart';
import 'package:myapp/modules/settings/components/dark_mode_card.dart';
import 'package:myapp/modules/settings/components/language_card.dart';
import 'package:myapp/modules/settings/components/profile_card.dart';
import 'package:myapp/modules/settings/components/remind_card.dart';
import 'package:myapp/widgets/app_bar.dart';
import 'package:myapp/widgets/switch_card.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appBarWithAccountAvatar(size, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileCard(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  DarkModeCard(),
                  SizedBox(height: 20),
                  RemindCard(),
                  SizedBox(height: 20),
                  LanguageCard(),
                  SizedBox(height: 20),
                  SwitchCard(text: 'Enable sign in with Biometric'),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
