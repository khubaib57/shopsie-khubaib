import 'package:flutter/material.dart';
import 'description.dart';

class TextFeild extends StatelessWidget {
  final String? hint;
  final Widget? icon;

  const TextFeild({this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hint ?? '', // Provide an empty string if hintText is null
        fillColor: Colors.grey,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
        suffixIcon: icon,
      ),
    );
  }
}



class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const CustomElevatedButton({required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText,style: TextStyle(fontSize: 25),),
      style: ElevatedButton.styleFrom(
         backgroundColor: Colors.purple,
        minimumSize: Size(300, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
       
      ),
    );
  }
}


class CustomizableProductContainer extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String price;
  final double containerHeight;
  final double containerWidth;
  final double textSize;
  final String details;

  const CustomizableProductContainer({
    required this.imageUrl,
    required this.text,
    required this.price,
    required this.containerHeight,
    required this.containerWidth,
    required this.textSize,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return Description(imageUrl: imageUrl,price: price,text: text,details: details);}));

      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(5.0),
        ),
        child : Padding(
          padding: EdgeInsets.all(15.0),
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                price,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class SimpleImageDescriptionCard extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String description;

  const SimpleImageDescriptionCard({
    required this.imageUrl,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 65, 
            height: 65, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price: $price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Description: $description",
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Listtilee extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onPressed;

    const Listtilee({
    required this.icon,
    required this.text,
    this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.black,),
      title: Text(text,style: TextStyle(color: Colors.black),),
      onTap: onPressed,

   
    );
  }
}