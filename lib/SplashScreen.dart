import 'package:dustbin_mangment/screens/auth/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Authenticate()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        fit:StackFit.expand,

        children:<Widget>[
          Container(
            decoration:BoxDecoration(
              color: new Color(0xff622F74),
              gradient: LinearGradient(
                 colors:[Colors.blue[50],Colors.lightBlueAccent]


              ),
            ),
          ),

          Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:<Widget>[

                Image.asset('assets/images/trash.PNG',
                  width: 200,
                ),
                Padding(
                  padding:EdgeInsets.only(top:20.0),
                ),

                SizedBox(
                  width: 250.0,
                  child:Center(
                    child: ColorizeAnimatedTextKit(
                      text: ["Trash Maintain",],

                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'times-new-roman',
                        fontWeight:FontWeight.bold,
                      ),
                      colors: [
                        Colors.blue,
                        Colors.black,
                        Colors.blue,
                        Colors.white,
                      ],
                    ),
                  ),
                ),
              ]
          )
        ],
      ),

    );
  }
}
