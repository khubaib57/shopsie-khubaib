import 'package:flutter/material.dart';
import 'common_things.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  SizedBox hspace = SizedBox(
    height: 35,
  );

  SizedBox wspace = SizedBox(
    width: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          Icon(Icons.shopping_cart, color: Colors.black),
          Icon(Icons.person, color: Colors.black),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
              onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black)),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 30),
                  color: Colors.white,
              child: Column(children: [
                hspace,
                Container(
                  height: 400,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(180),
                      topRight: Radius.circular(180),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLAlyzKmxdRlGHYDEG7XhIpTME13J0CW03eQ&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                hspace,
                Container(
                  height: 45,
                  width: 150,
                  // padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Noto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ]),
            ),
            hspace,
            Container(
                height: 130,
                width: double.infinity,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTirPzDWAxK1Lm5Cpv3gzin_kQM0R95Hlx0TQ&usqp=CAU",
                  fit: BoxFit.cover,
                )),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "Trending Now",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                hspace,
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 60,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        "All",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 35,
                      width: 85,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "Dresses",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 201, 200, 200),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 35,
                      width: 110,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "Accessories",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 201, 200, 200),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 35,
                      width: 85,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "Dresses",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 201, 200, 200),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                hspace,
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomizableProductContainer(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgRgTDDwj5MmUhD3zjKhRACMSeaWZJe-MggQ&usqp=CAU",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                          details: "Introducing the Red Lawn Women's Casual Frok—a chic and comfortable choice for any casual occasion. This vibrant red frock, made from breathable lawn fabric, combines style with affordability. Perfect for a trendy yet reasonably priced look, whether you're brunching with friends or enjoying a leisurely day out.",
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://www.limelight.pk/cdn/shop/files/DSC03388_1.jpg?v=1700220250",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                          details: "Printed shirt with embroidery and cuff Patti with slit Slub Khaddar",
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://www.limelight.pk/cdn/shop/files/DSC05162.jpg?v=1700218768",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                          details: "Paste print shirt with button detailing on the neckline,Fabric: Slub Khaddar",
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://www.krosskulture.com/cdn/shop/files/DSC04431_360x.jpg?v=1700133108",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                          details: "Bold cross-stitched floral embroidery on dark green shirt is a statement.Complimented with deliciated prayed sleeves. It was paired with a plain cambric pants.",
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://www.krosskulture.com/cdn/shop/files/1_56d22a58-aba3-4e8c-89b3-9adffc542d52_360x.jpg?v=1699467814",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                          details: "This luscious ensemble is the perfect choice for a modern, chic look. Thedreamy pink, contemporary shirt stands out with its intricate cutwork embroideryandsequins embellishments on sleeves",
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://www.krosskulture.com/cdn/shop/files/1_a4c5414b-d27c-4b00-87d8-2f3e4b0e8cdb_360x.jpg?v=1699468822",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                          details: "A gracefully elegant composition is layered over this classy ensemblerendered in a refreshing Pink shade. It depicts a classy silhouette shirt beautifullyadorned with captivating floral embroidery in crosstitch with embroidered pants.",
                        ),
                      ],
                    )),
                hspace,
                Center(
                  child: Text(
                    "Actua Categories",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                hspace,
                CustomizableProductContainer(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6CE2oxyrPdd75m_IPOwnQyIdxA9NW_FHvXA&usqp=CAU",
                    text: "Outerwear",
                    price: "Raincoats,sweaters,etc.",
                    containerHeight: 400,
                    containerWidth: 350,
                    textSize: 25,
                    details: "Elevate your style with our premium quality Blue Fur Jacket for women. Crafted to perfection, this luxurious piece combines warmth with a touch of sophistication. The rich blue hue adds a bold and trendy flair to your ensemble. Experience the epitome of comfort and fashion with this statement piece, designed to keep you both cozy and chic in any setting",),
                CustomizableProductContainer(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSimd5k3xHoti82DFhrjm4VCZmeQSUzfW4ntw&usqp=CAU",
                    text: "Leather Shoes",
                    price: "Shoes,Sandas,etc.",
                    containerHeight: 400,
                    containerWidth: 350,
                    textSize: 25,
                    details: "Step into timeless elegance with our Women's Brown Leather Shoes. Crafted with impeccable attention to detail, these shoes exude sophistication and versatility. The rich brown hue complements a myriad of outfits, making them a wardrobe staple. Enjoy the perfect blend of comfort and style as you stride confidently through any occasion.",),
                CustomizableProductContainer(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs9bWTMAPk7WNS2PZoCKZY6cpzdKVTJ8Ca6A&usqp=CAU",
                    text: "Light dresses",
                    price: "Evening,casual,home",
                    containerHeight: 400,
                    containerWidth: 350,
                    textSize: 25,
                    details: "Refresh your casual wardrobe with our Light White Casual Top for women. Effortlessly chic and versatile, this top is a go-to choice for a relaxed yet stylish look. The light, airy fabric ensures comfort, while the timeless white hue adds a touch of understated elegance. Whether paired with jeans for a laid-back outing or dressed up with accessories for a casual evening, this top is a versatile essential",),
                hspace,
                Center(
                  child: Text(
                    "Only Trusted Brands",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                hspace,
                Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqfPTEj2UpL_QgqTCL_brJw0yOaxyPjoZGQ&usqp=CAU",
                      width: 100,
                    ),
                    wspace,
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqfPTEj2UpL_QgqTCL_brJw0yOaxyPjoZGQ&usqp=CAU",
                        width: 100),
                    wspace,
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqfPTEj2UpL_QgqTCL_brJw0yOaxyPjoZGQ&usqp=CAU",
                        width: 100),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqfPTEj2UpL_QgqTCL_brJw0yOaxyPjoZGQ&usqp=CAU",
                      width: 100,
                    ),
                    wspace,
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqfPTEj2UpL_QgqTCL_brJw0yOaxyPjoZGQ&usqp=CAU",
                        width: 100),
                    wspace,
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqfPTEj2UpL_QgqTCL_brJw0yOaxyPjoZGQ&usqp=CAU",
                        width: 100),
                  ],
                ),
                hspace,
              ]),
            ),
            Container(
             color: Color.fromARGB(255, 18, 10, 62),
             height: 750,
             width: double.infinity,

              child: Column(
                children: [
                  hspace,
                  hspace,
                  Center(
                  child: Text(
                    "NEW ARRIVAL",
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Noto',
                      color: Color.fromARGB(255, 166, 149, 17),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                 Center(
                  child: Text(
                    "FALL 2021",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 166, 149, 17),
                    ),
                  ),
               ),
               hspace,
               Container(
                  height: 350,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(180),
                      topRight: Radius.circular(180),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7JVKIuXp_fierqAnkwy819OhFgDQUJ4sNdw&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                hspace,
                Container(
                 height: 40,
                 width: 120,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                 child: Center(child: Text("Explore",style: TextStyle(color: Colors.blue,fontSize: 25,),)),

                )
                ],
              ),
            ),
            hspace,
            Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: Column(children: [

            Center(
                  child: Text(
                    "RECOMENDED LOOKS FOR YOU",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
                hspace,
                
                      Row(
                        children: [
                          
                          Text(
                            "Gender: ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                          wspace,
                          wspace,
                          Text(
                            "Style: ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Partywear",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Row(children: [
                   Text(
                            "Price Range",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                             Text(
                              "All",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          
                          Icon(Icons.keyboard_arrow_down),
                ],),
                hspace,
               
                Card(
                    elevation: 5,
                 //   padding: EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    child : Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,), 
                            Container(
                              
                              height: 400,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrMLmPb3b-wB7iV16ul_elZn0YA250WtHIg&usqp=CAU"),
                                      fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            hspace,
                            Text(
                            "In this look",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          hspace,
                          SimpleImageDescriptionCard(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrMLmPb3b-wB7iV16ul_elZn0YA250WtHIg&usqp=CAU",price: "33.95",description: "Cotton dress",),
                          SizedBox(height: 10,),
                          SimpleImageDescriptionCard(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2gf8_E5s3U51m8zNmlvtCkR8KnwNINBSKXw&usqp=CAU",price: "12.95",description: "Sadle shoulder bag",),
                          SizedBox(height: 10,),
                          SimpleImageDescriptionCard(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDfQ4Xd7FPL3YuCg4pr0BWw4mo1fGSCcwD3w&usqp=CAU",price: "99.95",description: "Leather Shoes",),
                          SizedBox(height: 10,),
                           Container(
                        height: 45,
                         width: double.infinity,
                         
                  // padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "Buy It Now",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          ),
                    ),
                  ),
                  decoration: BoxDecoration(
                     color: Colors.white,
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(12)),
                ),

                              ]),
                    ),
                
                  ),
                  hspace,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.keyboard_arrow_left,color: Colors.grey,size: 35,),
                      Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 35)
                    ],),
                 hspace,
            ],), 

            ),
            Container(
              width: double.infinity,
              color: Color.fromARGB(255, 194, 164, 192),
              child: Column(children: [
               hspace,
               Container(
                  height: 280,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnHB2wf4yDyxyZr6aL9dJW4OHpw4HvbqVlB1zhzgc96N4yPMEwpMGSptKka85VGgW8IEE&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                hspace,
                Text(
                      "GET 20% OFF",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w300
                          ),),
                          SizedBox(height: 15,),
                  Text(
                      "Leave your email and get a discount",
                      style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 113, 113, 113)
                          
                          ),),   
                          hspace,
                          Row(children: [
                          Container(
                            height: 45,
                            width: 210,
                            margin: EdgeInsets.only(left: 25),
                            padding: EdgeInsets.all(10),
                            child: Text("Email",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 110,
                            margin: EdgeInsets.only(left: 25,right: 25),
                            padding: EdgeInsets.all(10),
                            child: Text("Subscribe",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple,
                            ),
                          ),

                          ],) , 
                    hspace,

              ],),


            ),
            Container(
            width: double.infinity,
            color: Colors.black,
            padding: EdgeInsets.all(15),
            child: 
              Row(children: [
                Text("@2021 Shopsie",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 77, 77, 77)),),
                Spacer(),
               Text("Privacy Policy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
               SizedBox(width: 10,),
               Text("Ts&Cs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),

              ],)
           

            )
          ],
        ),
      ),
    );
  }
}
