import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';

class SwitchCard extends StatefulWidget {
  final String text;

  const SwitchCard({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  _SwitchCardState createState() => _SwitchCardState();
}

class _SwitchCardState extends State<SwitchCard> {
  bool value = false;

  onChange(bool value) {
    setState(() {
      this.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(
            this.widget.text,
            style: Theme.of(context).textTheme.headline4,
          ),
          trailing: Switch(
            value: this.value,
            onChanged: (value) => this.onChange(value),
            activeColor: PrimaryColor,
          ),
        ),
      ),
    );
  }
}
