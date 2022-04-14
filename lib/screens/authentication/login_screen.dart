import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/colors.dart';

double TextSize = 20;
double MainTextSize = 35;

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_register_bottom.png"),
              alignment: Alignment(0, 1.05),
            ),
          ),
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const SizedBox(
            width: 50,
            height: 50,
            child: Image(image: AssetImage('assets/images/logo.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom:5),
            child: Text('Sign In',
              style: TextStyle(
                fontSize: MainTextSize,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Text('Sign in now to access your exercises and saved music.',
                style: TextStyle(
                fontSize: TextSize,

              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          fontSize: TextSize
                        )
                    )
                ),
                const SizedBox(height: 10),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontSize: TextSize
                        )
                    )
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: double.infinity,
                  child: const Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: customTextGreyColor
                    ),
                  )
                )

              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: Center(
              child: Text('LOGIN',
                style: TextStyle(
                  fontSize: MainTextSize,
                  color: Theme.of(context).colorScheme.background
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account? ',
                  style: TextStyle(
                      fontSize: TextSize,
                      color: customTextGreyColor
                  )
              ),
              Text('Sign Up',
                  style: TextStyle(
                    fontSize: TextSize,
                    color: customTextGreyColor,
                    fontWeight: FontWeight.bold

                  )
              )
            ],
          )
        ]
      )
    );
  }
}