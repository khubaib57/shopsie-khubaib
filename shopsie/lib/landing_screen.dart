import 'package:flutter/material.dart';
import 'login_scrren.dart';
import 'common_things.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:  Center(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    "Shopsie",
                    style: TextStyle(
                        fontSize: 75, color: Colors.purple, fontFamily: 'Noto'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "The best way to style your life",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Spacer(),
                  // ElevatedButton(
                  //   child: Text("Get Started",style: TextStyle(fontSize: 22, )),
                  //   style: ElevatedButton.styleFrom(
                  //       minimumSize: Size(280, 50),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //       ),
                  //       backgroundColor: Colors.purple,
                  //       ),
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context){return LoginSceen();}));
                  //     // Navigator.pop(context);
                  //   },
                  // ),
                  CustomElevatedButton(buttonText: "Get Started",onPressed:() {
                     Navigator.push(context, MaterialPageRoute(builder: (context){return LoginSceen();}));
                     }, ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                   width: 120,
                   height: 5,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: Colors.black),

                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
        ));
  }
}
