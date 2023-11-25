import 'package:flutter/material.dart';
import 'package:shopsie/categories.dart';
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
      //  Listtilee(icon: Icons.edit,text: "Edit Profile",),
      //  Listtilee(icon: Icons.person,text: "Username",),
      //  Listtilee(icon: Icons.email,text: "Email",),
      //  Listtilee(icon: Icons.lock,text: "Password",),
       ListTile(
      leading: Icon( Icons.edit,color: Colors.black,),
      title: Text("Edit Profile",style: TextStyle(color: Colors.black),),      
       ),
       ListTile(
      leading: Icon( Icons.person,color: Colors.black,),
      title: Text("Username",style: TextStyle(color: Colors.black),),      
       ),
       ListTile(
      leading: Icon( Icons.email,color: Colors.black,),
      title: Text("Email",style: TextStyle(color: Colors.black),),      
       ),
       ListTile(
      leading: Icon( Icons.lock,color: Colors.black,),
      title: Text("Password",style: TextStyle(color: Colors.black),),      
       ),

         Divider(),
        
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Categoties",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ),
      
      //  Listtilee(icon: Icons.add_box,text: "All Categories",
      //  onPressed: (){
      //   {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) {
      //           return Categoties(title:"All Categories",text1: "long sleeve t-shirts" ,imageUrl1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvUP0p5RSvE1a0LRQ54onwgVa9C-df-pwsZA&usqp=CAU",text2: "Sliders",imageUrl2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSThf2cvF8Mo_Hy3qTCngrUAEr5WMiwM-9Xgw&usqp=CAU",text3: "Slippers",imageUrl3: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqSfx-SizGc7JmyHU7F3XI3gtAYHys6wPjBg&usqp=CAU",text4: "long sleeve top",imageUrl4: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8J-SyJEIUg4rfRs-jvrFr-ja3aFXYqrxCBw&usqp=CAU",text5: "slip dress",imageUrl5: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1QYMG2Idg5XnK6n25esQK1LoU97ZdY-GH5A&usqp=CAU",text6: "Nike Slides",imageUrl6: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZAIhTI-OW-VCfBw4ER5PVPpOBqwdKfBNd4w&usqp=CAU",);
      //         }));
      //   }
      //  }
       
      //  ),
        Listtilee(icon: Icons.add_box,text: "All Categories",
       onPressed: (){
        {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Categoties(
  title: "All Categories",
  imageUrls: [
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvUP0p5RSvE1a0LRQ54onwgVa9C-df-pwsZA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSThf2cvF8Mo_Hy3qTCngrUAEr5WMiwM-9Xgw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqSfx-SizGc7JmyHU7F3XI3gtAYHys6wPjBg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8J-SyJEIUg4rfRs-jvrFr-ja3aFXYqrxCBw&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1QYMG2Idg5XnK6n25esQK1LoU97ZdY-GH5A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZAIhTI-OW-VCfBw4ER5PVPpOBqwdKfBNd4w&usqp=CAU",
  ],
  texts: [
    "long sleeve t-shirts",
    "Sliders",
    "Slippers",
    "long sleeve top",
   "slip dress",
    "Nike Slides",
  ],
);

                }));
        }
       }
       
       ),

      
       Listtilee(icon: Icons.shop,text: "Shirts",
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Categoties(
  title: "Shirts",
  imageUrls: [
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREIc2hpQl-0lkgviNmRcQnWNLT8GLAIzYyNA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMu7yMog4Cw_k8KqaZKqfwCyCa7ao5oJ4rA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcu10cHoVjy1Uq8JD9y9cCO4f2OjGJi94CZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqu2UCyDHkBlEq8daM16H8DVkLXAeUADHQ_Q&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7zxdXeSSPBZOYlEWILQNx5YB2I3XtJiGrA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjnWsYiKmJBsMDF8FdAS_sJOxavai5AKxkiw&usqp=CAU",
  ],
  texts: [
    "Formal shirt",
    "flowral shirt ",
    "polo shirt",
    "t shirt ",
   "check shirt",
    "full sleeve t shirt",
  ],
);

                }));
       
       },
       ),


       Listtilee(icon: Icons.shop,text: "Bottoms",
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Categoties(
  title: "Shirts",
  imageUrls: [
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREIc2hpQl-0lkgviNmRcQnWNLT8GLAIzYyNA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMu7yMog4Cw_k8KqaZKqfwCyCa7ao5oJ4rA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcu10cHoVjy1Uq8JD9y9cCO4f2OjGJi94CZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqu2UCyDHkBlEq8daM16H8DVkLXAeUADHQ_Q&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7zxdXeSSPBZOYlEWILQNx5YB2I3XtJiGrA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjnWsYiKmJBsMDF8FdAS_sJOxavai5AKxkiw&usqp=CAU",
  ],
  texts: [
    "Formal shirt",
    "flowral shirt ",
    "polo shirt",
    "t shirt ",
   "check shirt",
    "full sleeve t shirt",
  ],
);

                }));
       
       },),
       Listtilee(icon: Icons.shop,text: "Shoes",
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Categoties(
  title: "Shirts",
  imageUrls: [
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREIc2hpQl-0lkgviNmRcQnWNLT8GLAIzYyNA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMu7yMog4Cw_k8KqaZKqfwCyCa7ao5oJ4rA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcu10cHoVjy1Uq8JD9y9cCO4f2OjGJi94CZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqu2UCyDHkBlEq8daM16H8DVkLXAeUADHQ_Q&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7zxdXeSSPBZOYlEWILQNx5YB2I3XtJiGrA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjnWsYiKmJBsMDF8FdAS_sJOxavai5AKxkiw&usqp=CAU",
  ],
  texts: [
    "Formal shirt",
    "flowral shirt ",
    "polo shirt",
    "t shirt ",
   "check shirt",
    "full sleeve t shirt",
  ],
);

                }));
       
       },),
       Listtilee(icon: Icons.shop,text: "Heels",
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Categoties(
  title: "Shirts",
  imageUrls: [
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREIc2hpQl-0lkgviNmRcQnWNLT8GLAIzYyNA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMu7yMog4Cw_k8KqaZKqfwCyCa7ao5oJ4rA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcu10cHoVjy1Uq8JD9y9cCO4f2OjGJi94CZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqu2UCyDHkBlEq8daM16H8DVkLXAeUADHQ_Q&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7zxdXeSSPBZOYlEWILQNx5YB2I3XtJiGrA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjnWsYiKmJBsMDF8FdAS_sJOxavai5AKxkiw&usqp=CAU",
  ],
  texts: [
    "Formal shirt",
    "flowral shirt ",
    "polo shirt",
    "t shirt ",
   "check shirt",
    "full sleeve t shirt",
  ],
);

                }));
       
       },),
       Listtilee(icon: Icons.watch,text: "Accessories",
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Categoties(
  title: "Shirts",
  imageUrls: [
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREIc2hpQl-0lkgviNmRcQnWNLT8GLAIzYyNA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMu7yMog4Cw_k8KqaZKqfwCyCa7ao5oJ4rA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcu10cHoVjy1Uq8JD9y9cCO4f2OjGJi94CZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqu2UCyDHkBlEq8daM16H8DVkLXAeUADHQ_Q&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7zxdXeSSPBZOYlEWILQNx5YB2I3XtJiGrA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjnWsYiKmJBsMDF8FdAS_sJOxavai5AKxkiw&usqp=CAU",
  ],
  texts: [
    "Formal shirt",
    "flowral shirt ",
    "polo shirt",
    "t shirt ",
   "check shirt",
    "full sleeve t shirt",
  ],
);

                }));
       
       },),
       Listtilee(icon: Icons.shop,text: "Tops",
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Categoties(
  title: "Shirts",
  imageUrls: [
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREIc2hpQl-0lkgviNmRcQnWNLT8GLAIzYyNA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMu7yMog4Cw_k8KqaZKqfwCyCa7ao5oJ4rA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcu10cHoVjy1Uq8JD9y9cCO4f2OjGJi94CZQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqu2UCyDHkBlEq8daM16H8DVkLXAeUADHQ_Q&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7zxdXeSSPBZOYlEWILQNx5YB2I3XtJiGrA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjnWsYiKmJBsMDF8FdAS_sJOxavai5AKxkiw&usqp=CAU",
  ],
  texts: [
    "Formal shirt",
    "flowral shirt ",
    "polo shirt",
    "t shirt ",
   "check shirt",
    "full sleeve t shirt",
  ],
);

                }));
       
       },),
       Divider(),
       






      ],

      ),
    );
  }
}