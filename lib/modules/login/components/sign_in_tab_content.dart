import 'package:flutter/material.dart';
import 'package:myapp/config/routes/router.dart';
import 'package:myapp/config/themes/theme.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/widgets/button.dart';

class SignInTabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PhoneNumberInput(),
          SizedBox(height: 20),
          PasswordInput(),
          SizedBox(height: 11.0),
          RememberForgotPassword(),
          SizedBox(height: 40),
          SignInButton(),
          SizedBox(height: 20),
          TermAndPolicy()
        ],
      ),
    );
  }
}

class PhoneNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone number'),
        SizedBox(height: 5.0),
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(hintText: 'Enter your phone number'),
        ),
      ],
    );
  }
}

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password'),
        SizedBox(height: 5.0),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            suffixIcon: IconButton(
              icon: Icon(
                Icons.visibility,
                color: MediumGreyColor,
              ),
              onPressed: null,
            ),
          ),
        ),
      ],
    );
  }
}

class RememberForgotPassword extends StatelessWidget {
  const RememberForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => null,
          child: Row(
            children: [
              Icon(
                Icons.check_box_outline_blank,
                color: MediumGreyColor,
              ),
              Text('Remember me'),
            ],
          ),
        ),
        TextButton(
          onPressed: null,
          child: Text(
            'Forgot password?',
            style: TextStyleLightTheme.highlight,
          ),
        )
      ],
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    goToAccountPage() {
      Navigator.pushNamed(context, AccountPath);
    }

    return Center(
      child: PrimaryButton(
        'Sign In',
        onPressed: () => goToAccountPage(),
      ),
    );
  }
}

class TermAndPolicy extends StatelessWidget {
  const TermAndPolicy({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(style: Theme.of(context).textTheme.headline5, children: [
          TextSpan(text: 'By sign in or sign up, you agree to '),
          TextSpan(
              text: 'Sutrix’s Terms', style: TextStyleLightTheme.highlight),
          TextSpan(text: ' and '),
          TextSpan(text: 'Private Policy', style: TextStyleLightTheme.highlight)
        ]),
      ),
    );
  }
}
