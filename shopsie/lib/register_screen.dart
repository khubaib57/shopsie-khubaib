import 'package:flutter/material.dart';
import 'common_things.dart';
import 'login_scrren.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Hello! Register to get started",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextFeild(
                hint: "Full Name",
              ),
              SizedBox(
                height: 25,
              ),
              TextFeild(
                hint: "Last Name",
              ),
              SizedBox(
                height: 25,
              ),
              TextFeild(
                hint: "Email",
              ),
              SizedBox(
                height: 25,
              ),
              TextFeild(
                hint: "Password",
              ),
              SizedBox(
                height: 25,
              ),
              Center(child: CustomElevatedButton(buttonText: "Register",onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){return LoginSceen();}));
              })),
              SizedBox(
                height: 25,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
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
                    width: 80,
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
                      height: 100,
                      width: 100,
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
                      height: 100,
                      width: 100,
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
            Text("Already have an account?",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return LoginSceen();}));
              },   
              child: Text("Login Now",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.purple)),)

              ],)


            ]
            ),
        )

    );
  }
}