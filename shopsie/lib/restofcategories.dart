import 'package:flutter/material.dart';
import 'package:shopsie/listview.dart';
import 'package:shopsie/main_screen.dart';
import 'common_things.dart';

class AllCategories extends StatelessWidget {
  final String title;
  final List<String> imageUrls;
  final List<String> texts;
  final List<String> price;
  final List<String> details;

  const AllCategories({
    required this.title,
    required this.imageUrls,
    required this.texts,
      required this.price,
      required this.details,
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
      ),
      body: GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 20,right: 15,left: 15),
            child: CategoriesContainer(imageUrl: imageUrls[index], text: texts[index],price: price[index],details: details[index],),
          );
        },
      ),
    );
  }
}