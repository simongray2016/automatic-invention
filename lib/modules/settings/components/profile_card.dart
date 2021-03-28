import 'package:flutter/material.dart';
import 'package:myapp/constants/images_path.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.21,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            width: size.width,
            height: size.height * 0.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileSettingButton(
                            imagePath: ChangeInformationPath,
                            text: 'Edit profile',
                          ),
                          ProfileSettingButton(
                            imagePath: ChangePasswordPath,
                            text: 'Change password',
                          ),
                          ProfileSettingButton(
                            imagePath: LogOutPath,
                            text: 'Logout',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileSettingButton extends StatelessWidget {
  final String imagePath;
  final String text;

  const ProfileSettingButton(
      {Key key, @required this.imagePath, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              this.imagePath,
              height: 50,
              width: 50,
            ),
            SizedBox(height: 10),
            Text(this.text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
