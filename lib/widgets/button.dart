import 'package:flutter/material.dart';
import 'package:myapp/config/themes/theme.dart';
import 'package:myapp/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  String text;
  dynamic onPressed;
  bool stretch = false;
  bool outline = false;

  PrimaryButton(this.text, {this.onPressed, this.stretch});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.stretch == true ? double.infinity : null,
      child: FlatButton(
        onPressed: this.onPressed,
        child: Text(
          this.text,
          style: TextStyleLightTheme.buttton,
        ),
        color: Theme.of(context).primaryColor,
        disabledColor: Theme.of(context).primaryColor.withOpacity(0.5),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 58),
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: outline == true
                  ? Theme.of(context).primaryColor
                  : TransparentColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
