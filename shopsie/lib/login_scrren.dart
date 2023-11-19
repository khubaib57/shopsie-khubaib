import 'package:flutter/material.dart';
import 'common_things.dart';
import 'register_screen.dart';
import 'main_screen.dart';
class LoginSceen extends StatelessWidget {
  const LoginSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            color: Colors.white,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back! Glad to",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "see you,Again!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFeild(
                  hint: "Enter your Email",
                ),
                SizedBox(
                  height: 25,
                ),
                TextFeild(
                  hint: "Enter your Password",
                  icon: Icon(Icons.looks),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: CustomElevatedButton(
                    buttonText: "Login",
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context){return MainScreen();}));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 130,
                      height: 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Center(
                        child: Text("Or Login with",
                            style: TextStyle(fontSize: 15, color: Colors.grey))),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 130,
                      height: 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsqfUTQHwGFmd6EG3ZDgwwU_3D1uNzLIvuwA&usqp=CAU"),
                        ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeAoufZV8Xahk650DiYIVgmfuNkpobZfbLixgIjUWFz6LZ1o5hdr1ET__wn2aknIgt5pU&usqp=CAU",),),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Text("Don't have an account?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return RegisterScreen();}));
                }, 
                
                
                child: Text("Register Now",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.purple)),)
    
                ],)
    
              ],
            ),
          ),
    );
  }
}
