
import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: 5.0),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
