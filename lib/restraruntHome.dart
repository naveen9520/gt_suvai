import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt_suvai/restraruntDescription.dart';
import 'package:text_divider/text_divider.dart';
import 'class.dart';
import 'color.dart';

class food1 extends StatefulWidget {
const food1({super.key});

@override
State<food1> createState() => _food1State();
}

class _food1State extends State<food1> {
@override
Widget build(BuildContext context) {
  return Scaffold(

    body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {return[
          SliverAppBar(
            toolbarHeight: 140,
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.location_on,size: 30,color: Colors.black,),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Text('Rathinam circle view...',
                                style:GoogleFonts.openSans(fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                       const Padding(
                        padding: EdgeInsets.only(right: 5,top: 5),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 20,
                          child: Icon(
                            Icons.person,size: 35,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(' Hello Hari..',
                    style:GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                          const HotelDescription()),
                        );
                      });
                      },
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*.9,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                             Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.search,color: gtGreen,)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedTextKit(
                                totalRepeatCount: 5000,
                                animatedTexts: [
                                  RotateAnimatedText('search Restaurants..',
                                      textStyle:abc),
                                  RotateAnimatedText('search dishes..',
                                      textStyle:abc),
                                  RotateAnimatedText('search favourite foods..',
                                      textStyle:abc),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ),
                    ),
                  ),
                  ],
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [gtGreen,Colors.white],
                  ),
                ),

              ),

            ),
          ),
        ];
          },
        body: ListView(
          scrollDirection: Axis.vertical,
          dragStartBehavior: DragStartBehavior.down,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Today's Offers",style: headers,),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.25,
              width: MediaQuery.of(context).size.width*1,
              child:
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height*.20,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ), itemCount:Offer_details.length ,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return
                    Container(
                      height: MediaQuery.of(context).size.height*.25,
                      width: MediaQuery.of(context).size.width*1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: gtGreen,
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: const Offset(0, 10)
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(

                              image:AssetImage(Offer_details[index].image),fit: BoxFit.fill
                          )
                      ),

                    );
                },


              ),),

            // Budget
            TextDivider(text: Text("Budget",style: dividerText,),thickness: 1,),

            Container(
              height: 160,
              width: double.infinity,


              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: budgetdetails.length,
                  itemBuilder: (BuildContext, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Container(
                            height: 100,
                            width:100 ,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: gtGreen,
                                      spreadRadius: 0,
                                      blurRadius: 12,
                                      offset: const Offset(0, 10)
                                  )
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage(budgetdetails[index].image),fit: BoxFit.fill)
                            ),
                            child: Center(child: Text(budgetdetails[index].text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),)),

                          ),
                        ),


                      ],
                    );
                  },
                ),
              ),

            ),
            TextDivider(text: Text("Explore by Catogories",style: dividerText,),thickness: 1,),

            // Explore by Catogories
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,


                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    addRepaintBoundaries: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 80,
                              decoration: BoxDecoration(

                                  boxShadow: [
                                    BoxShadow(
                                        color: gtGreen,
                                        spreadRadius: 0,
                                        blurRadius: 12,
                                        offset: const Offset(0, 10)
                                    )
                                  ],


                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/img/burger.jpeg"))
                              ),

                            ),
                            Text("Burger",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                          ],
                        ),

                      );
                    },
                  ),
                ),

              ),
            ),


            // All Restrarunt
            TextDivider(text: Text("All Restaurants",style: dividerText,),thickness: 1,),
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height*1.31,
              ),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  itemCount: Similar.length,
                  itemBuilder: (BuildContext context,Index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:MediaQuery.of(context).size.height*.31,
                        width: MediaQuery.of(context).size.width*1,
                        decoration: BoxDecoration(color: Colors.white,

                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: const Offset(0, 10)
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height:MediaQuery.of(context).size.height*.30,
                                width: MediaQuery.of(context).size.width*1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                child:Column(
                                  children: [
                                    Stack(
                                        children: [
                                          Container(
                                            height:MediaQuery.of(context).size.height*.20,
                                            width: MediaQuery.of(context).size.width*1,
                                            foregroundDecoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                  colors: [
                                                    Colors.black,
                                                    Colors.black12,
                                                  ]
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(Similar[Index].image),fit: BoxFit.fill
                                                ),
                                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),
                                                  topRight: Radius.circular(20),topLeft: Radius.circular(20),)
                                            )
                                          ),
                                          Positioned(
                                            left: MediaQuery.of(context).size.height*.015,
                                            bottom: MediaQuery.of(context).size.height*.015,
                                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(alignment: Alignment.center,
                                                  height: 26,width: 200,
                                                  child: Text(Similar[Index].hotelName,
                                                    style: GoogleFonts.openSans(
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.bold
                                                    ),),
                                                ),
                                                Container(alignment: Alignment.center,
                                                  height: 26,width: 200,
                                                  child: Text(Similar[Index].cusine,
                                                    style: GoogleFonts.openSans(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                    ),),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Icon(Icons.location_on_outlined,color: gtGreen,),
                                            Text(Similar[Index].place,
                                              style: GoogleFonts.openSans(
                                                  color: Colors.black,
                                                  fontSize: 14,fontWeight: FontWeight.bold
                                              ),),
                                          ],),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10.0),
                                            child: Row(
                                              children: [

                                                Padding(
                                                  padding: EdgeInsets.only(right: 8.0),
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height:MediaQuery.of(context).size.height*.0175,
                                                    width: MediaQuery.of(context).size.width*.04,
                                                    color: Colors.green,
                                                    child:  RatingBar.builder(
                                                      glowRadius: 3,
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction: Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 1,
                                                      itemSize: 15,
                                                      itemPadding: const EdgeInsets.symmetric(horizontal:0),
                                                      itemBuilder: (context, _) => const Icon(
                                                        Icons.star_rate,
                                                        size:1,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                      },
                                                    ),),
                                                ),Text(Similar[Index].rating,
                                                  style: GoogleFonts.openSans(
                                                      color: Colors.black,
                                                      fontSize: 16,fontWeight: FontWeight.bold
                                                  ),)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [

                                            Text('    Distance    ${Similar[Index].distance}',
                                              style: GoogleFonts.openSans(
                                                  color: Colors.black,
                                                  fontSize: 14,fontWeight: FontWeight.bold
                                              ),),
                                          ],),

                                        ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Text("   Parking",style: GoogleFonts.openSans(fontSize:14,color: Colors.black,fontWeight: FontWeight.bold),),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Container(
                                                  height: 25,
                                                  width:45,
                                                  decoration: BoxDecoration(color: Colors.white,
                                                      borderRadius: BorderRadius.circular(5),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black87,
                                                          spreadRadius: 0.5,
                                                          blurRadius: 20,
                                                          offset: const Offset(0, 5),
                                                        )
                                                      ]
                                                  ),
                                                  child: Center(child: Icon(Icons.directions_car,color:Colors.red,))),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Container(
                                                  height: 25,
                                                  width:45,
                                                  decoration: BoxDecoration(color: Colors.white,
                                                      borderRadius: BorderRadius.circular(5),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black87,
                                                          spreadRadius: 0.5,
                                                          blurRadius: 25,
                                                          offset: const Offset(0, 5),
                                                        )
                                                      ]
                                                  ),
                                                  child: Center(child: Icon(Icons.two_wheeler,color:Colors.green,))),
                                            ),

                                          ],),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10.0),
                                            child: Icon(Icons.directions,color:Colors.green,size: 35,),
                                          )

                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    );
                  }),
            ),

          ],),


      ),
),



);
}
}
