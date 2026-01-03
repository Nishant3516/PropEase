import 'package:flutter/material.dart';

class GreetWidget extends StatelessWidget {
  const GreetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Let\'s find your '), Text('Favourite Home')],
        ),
        CircleAvatar(radius: 12),
      ],
    );
  }
}
