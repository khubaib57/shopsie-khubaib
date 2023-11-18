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
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgRgTDDwj5MmUhD3zjKhRACMSeaWZJe-MggQ&usqp=CAU",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgRgTDDwj5MmUhD3zjKhRACMSeaWZJe-MggQ&usqp=CAU",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgRgTDDwj5MmUhD3zjKhRACMSeaWZJe-MggQ&usqp=CAU",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgRgTDDwj5MmUhD3zjKhRACMSeaWZJe-MggQ&usqp=CAU",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
                        ),
                        CustomizableProductContainer(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgRgTDDwj5MmUhD3zjKhRACMSeaWZJe-MggQ&usqp=CAU",
                          text: "Red frok",
                          price: "19.99 USD",
                          containerHeight: 200,
                          containerWidth: 120,
                          textSize: 20,
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
                    textSize: 25),
                CustomizableProductContainer(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSimd5k3xHoti82DFhrjm4VCZmeQSUzfW4ntw&usqp=CAU",
                    text: "Leather Shoes",
                    price: "Shoes,Sandas,etc.",
                    containerHeight: 400,
                    containerWidth: 350,
                    textSize: 25),
                CustomizableProductContainer(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs9bWTMAPk7WNS2PZoCKZY6cpzdKVTJ8Ca6A&usqp=CAU",
                    text: "Light dresses",
                    price: "Evening,caua,home",
                    containerHeight: 400,
                    containerWidth: 350,
                    textSize: 25),
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
