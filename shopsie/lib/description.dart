import 'package:flutter/material.dart';
import 'package:shopsie/main_screen.dart';
import 'common_things.dart';

class Description extends StatelessWidget {
final String imageUrl;
final String text;
final String price;
 final String details;
 

  const Description({
    required this.imageUrl,
    required this.text,
    required this.price,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Title(
            color: Colors.purple,
            child: Text(
              "Shopsie",
              style: TextStyle(
                  color: Colors.purple,
                  fontFamily: 'Noto',
                  fontWeight: FontWeight.bold),
            )),
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
          onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context){return MainScreen();}));
          },
        ),
      ),
    
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      SizedBox(height: 15,),
      Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
        )),
      SizedBox(height: 15,),
    Container(margin: EdgeInsets.all(10),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
                text,
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
      Text(
                price,
                style: TextStyle(
                  fontSize: 29,
                  color: Colors.purple,
                ),
              ),
           SizedBox(height: 15),
           Text(
                "Product Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                details,
                style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 62, 62, 62)

                ),
              ),
              SizedBox(height: 25,),
              Center(
                  child: CustomElevatedButton(
                    buttonText: "Login",
                    onPressed: () {
                    },
                  ),
                ),
               
              
        ],)
    ),
    ],)
    ,);
  }
}