
import 'package:flutter/material.dart';
import 'package:skin_canscer_detector/components/rounded_button.dart';
import 'package:skin_canscer_detector/constants.dart';
import 'package:skin_canscer_detector/screens/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            "Skin Cancer Detector",
            style: TextStyle(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedButton(
            text: "SIGN UP",
            color: kPrimaryColor,
            textColor: Colors.black,
            press: () {},
          )
        ],
      ),
    );
  }
}

//Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();},),);
