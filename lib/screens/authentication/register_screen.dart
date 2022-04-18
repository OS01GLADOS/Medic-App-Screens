import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/screens/authentication/button_widget.dart';

import '../../colors.dart';
import '../../constants.dart';
import 'button_bottom_text.dart';
import 'default_text_style.dart';
import 'login_register_box_decoration.dart';
import 'logo.dart';
import 'text_input.dart';

class RegisterScreen extends StatelessWidget {


  var screen_height;
  var screen_width;


  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    screen_height = MediaQuery.of(context).size.height;
    screen_width = MediaQuery.of(context).size.width;

    return Container(
        decoration: loginRegisterBoxDecoration,
        padding: EdgeInsets.symmetric(
            horizontal: screen_width * 0.05
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logo,
              SizedBox(height: screen_height* 0.03),
              const Text(
                'Sign Up',
                style: TextStyle(
                  color: customTextGrey700Color,
                    fontSize: mainTextSize,
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screen_height* 0.01),
              Text(
                  'Sign up now for free and start meditating, and explore Medic.',
                  style: defaultTextStyle),
              SizedBox(height: screen_height* 0.0033),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    TextInput('Name'),
                    SizedBox(height: screen_height* 0.01),
                    TextInput('Email Address'),
                    SizedBox(height: screen_height* 0.01),
                    TextInput('Password')
                  ],
                ),
              ),
              ButtonWidget('SIGNUP'),
              ButtonBottomText('Already have an account? ', 'Sign In')
            ]));
  }
}
