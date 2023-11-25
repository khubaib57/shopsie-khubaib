import 'package:flutter/material.dart';
import 'package:shopsie/categories.dart';
import 'package:shopsie/drawer.dart';
import 'package:shopsie/main_screen.dart';
import 'common_things.dart';

class Listtview extends StatelessWidget {
  final String title;
  final List<String> imageUrls;
  final List<String> texts;

  const Listtview({
    required this.title,
    required this.imageUrls,
    required this.texts,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Title(
          color: Colors.black,
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold,color:  Colors.black,),
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MainScreen();
            }));
          },
        ),
        actions: [
          IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context){return Categoties(title: "All Categories",
   imageUrls: imageUrls,
  texts:texts,
  );}));
          }, icon: Icon(Icons.view_array,color: Colors.black))
        ],
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 20,right: 15,left: 15),
            child: listclass(imageUrl: imageUrls[index], text: texts[index]),
          );
        },
      )
      
      
      );
  }
}
