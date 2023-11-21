import 'package:flutter/material.dart';
import 'common_things.dart';
class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: Colors.white,
      
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
       UserAccountsDrawerHeader(accountName: Text("Muhammad Khubaib",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),), accountEmail: Text("muhammadkhubaib5701@gmail.com"),
       currentAccountPicture: CircleAvatar(
        radius: 150,
        child: ClipOval(
          
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-85LP0ob9Mdm7V9ZUGldkoT8M1YW01ZNEPDl_qBPPhJLuDeIWgIIbhXG6_iV0tBLPXT0&usqp=CAU",
          height: 70,
          width: 80,
          fit: BoxFit.cover,
          ),
        ),
       ),
       decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMwxG0KzkxhMQQD6vAyllgbEPK9Owk7PD3rrpeE1TXfEb9_2uRKkSWDOvfGKr_zY6ujKQ&usqp=CAU",
        
        ),
        fit: BoxFit.cover,
       ),
       ),
       ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ),
         SizedBox(height: 10,),
       Listtilee(icon: Icons.edit,text: "Edit Profile",),
       Listtilee(icon: Icons.person,text: "Username",),
       Listtilee(icon: Icons.email,text: "Email",),
       Listtilee(icon: Icons.lock,text: "Password",),
        Divider(),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Categoties",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ),
      
       Listtilee(icon: Icons.add_box,text: "All Categories",),
       Listtilee(icon: Icons.shop,text: "Shirts",),
       Listtilee(icon: Icons.shop,text: "Bottoms",),
       Listtilee(icon: Icons.shop,text: "Shoes",),
       Listtilee(icon: Icons.shop,text: "Heels",),
       Listtilee(icon: Icons.watch,text: "Accessories",),
       Listtilee(icon: Icons.shop,text: "Tops",),
       Divider(),
       






      ],

      ),
    );
  }
}