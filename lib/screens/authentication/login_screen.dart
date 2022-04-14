import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/colors.dart';
import 'package:medic_app_screens/screens/authentication/button_bottom_text.dart';

import '../../constants.dart';
import 'button_widget.dart';
import 'login_register_box_decoration.dart';
import 'logo.dart';
import 'text_input.dart';

class LoginScreen extends StatelessWidget {

  var screen_height;
  var screen_width;

  LoginScreen({Key? key}) : super(key: key);

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
                'Sign In',
                style: TextStyle(
                    fontSize: mainTextSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screen_height* 0.01),
              const Text(
                'Sign in now to access your exercises and saved music.',
                style: TextStyle(
                  fontSize: textSize,
                ),
              ),
              SizedBox(height: screen_height* 0.0033),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    TextInput('Email Address'),
                    SizedBox(height: screen_height* 0.01),
                    TextInput('Password'),
                    Container(
                        margin: EdgeInsets.only(top: screen_height*0.01),
                        width: double.infinity,
                        child: const Text(
                          'Forgot Password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: customTextGreyColor),
                        ))
                  ],
                ),
              ),
              ButtonWidget('LOGIN'),
              ButtonBottomText('Don’t have an account? ', 'Sign Up')
            ]));
  }
}
