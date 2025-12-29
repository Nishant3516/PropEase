import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_svg_picture.dart';
import 'package:propease/core/widgets/app_text_field.dart';
import 'package:propease/gen/assets.gen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppSvgPicture(assetPath: Assets.images.logoWithName),
          Text('Sign In'),
          AppTextField(fieldName: 'Username'),
          AppTextField(fieldName: 'Password'),
        ],
      ),
    );
  }
}
