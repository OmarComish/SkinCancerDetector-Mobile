import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/image_detector.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 120,
            left: 140,
            child: Image.asset("images/cancer.jpeg"),
            width: size.width * 0.35,
          ),
          /*Column(
            mainAxisAlignment: MainAxisAlignment.center,p
            children: <Widget>[Image.asset("images/cancer.jpeg",height: size.height * 0.35)],
          ),*/
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29)),
                child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person, color: kPrimaryColor),
                        hintText: "Your Email",
                        border: InputBorder.none)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29)),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock, color: kPrimaryColor),
                        suffixIcon:
                            Icon(Icons.visibility, color: kPrimaryColor),
                        hintText: "Password",
                        border: InputBorder.none)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29.0),
                  child: FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    color: kPrimaryColor,
                    //Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();},),);
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return ImgDetector();},),);},
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: kPrimaryLightColor),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          /*Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("images/cancer.jpeg"),
            width: size.width * 0.35,
          )*/
        ],
      ),
    );
  }
}
