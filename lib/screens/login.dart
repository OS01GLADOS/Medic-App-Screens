import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double TextSize = 20;
double MainTextSize = 35;

class LoginScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return
      Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_register_bottom.png"),
              alignment: Alignment(0, 1.05),
            ),
          ),
      padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            width: 50,
            height: 50,
            child: Image(image: AssetImage('assets/images/logo.png')),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom:5),
            child: Text('Sign In',
              style: TextStyle(
                fontSize: MainTextSize,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text('Sign in now to acces your excercises and saved music.',
                style: TextStyle(
                fontSize: TextSize,
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Email Adress',
                        hoverColor: Colors.grey,
                        hintStyle: TextStyle(
                          fontSize: TextSize
                        )
                    )
                ),
                SizedBox(height: 10),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontSize: TextSize
                        )
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: double.infinity,
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
                )

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 5),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Center(
              child: Text('LOGIN',
                style: TextStyle(
                  fontSize: MainTextSize,
                  color: Colors.white
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
                      color: Colors.grey
                  )
              ),
              Text('Sign Up',
                  style: TextStyle(
                    fontSize: TextSize,
                    color: Colors.grey,
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