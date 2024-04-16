import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
class pro3 extends StatefulWidget {
  const pro3({super.key});

  @override
  State<pro3> createState() => _pro3State();
}
List item = [
  "assets/img_28.png",
  "assets/img_29.png",
  "assets/img_30.png",
  "assets/img_31.png",
];




class _pro3State extends State<pro3> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 400,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search for products",
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16/9,
                      viewportFraction: 1.8,
                      enableInfiniteScroll: true,
                      animateToClosest: true,
                      reverse: false,
                      autoPlay:false,
                      scrollDirection: Axis.horizontal,
                      autoPlayInterval: Duration(seconds: 4),
                      autoPlayAnimationDuration: Duration(seconds: 3),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                    ),
                    itemCount:4,
                    itemBuilder: (BuildContext context,int itemindex,int pageviewindex)

                    {
                      return
                        Container(
                          height: 600,
                          width: 400,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(item[itemindex]),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          alignment: Alignment.topRight,

                        );
                    }
                ),

                Positioned(
                    top: 25,
                    right: 30,
                    child:
                    Icon(Icons.favorite,color: Colors.red,)),
                Positioned(
                    top: 70,
                    right: 30,
                    child:
                    Icon(Icons.share)),
              ],
            ),
            Center(
              child: DotsIndicator(
                dotsCount: 4,
                position: currentindex.toInt(),
                decorator: DotsDecorator(
                    activeColor: Colors.cyan,
                    size: Size.square(4.0),
                    activeSize: Size.square(5.0),
                    activeShape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(2))
                ),),
            ),
            SizedBox(
              height: 50,
            ),
            RichText(textAlign: TextAlign.center,
                text:TextSpan(text: "BOULT Z40 Zen ENC Mic60H Battery Life,,",
                  style: TextStyle(color: Colors.black,fontSize: 20),)
            ),
            RichText(textDirection: TextDirection.rtl,
              text: TextSpan(text: "Low Latency Gaming,Made in India",style: TextStyle(fontSize: 20),),),

            RichText( textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              text: const TextSpan(
                text: 'BOULT',
                style: TextStyle(
                  fontSize: 25,
                ),
                children: [
                  TextSpan(
                    text: 'Omega Bioceramic',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'Moonswatch Mission',
                  ),
                  TextSpan(
                      text: "to the Moon S033M100"
                  ),
                ],
              ),
            ),
            RatingBar.builder(
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              glowColor: Colors.green,
              itemPadding: EdgeInsets.symmetric(horizontal: 0.3),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.green,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Column(
              children: [
                Text("very good",style: TextStyle(
                  color: Colors.blue,fontSize: 25,
                ),),
              ],
            ),
            Text("MRP\u20B92,999" ,style: TextStyle(fontSize: 30),),
            Text("NO EMI",style: TextStyle(fontSize:20)),
            Text("10 days return policy",style: TextStyle(fontSize: 20),),
            Text("Cash on Delivery Available",style: TextStyle(fontSize:20),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 40,
                            child: Image.asset("assets/img_11.png",fit: BoxFit.fill,),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text("PAY WITH EMI",style: TextStyle(
                          fontSize: 20,
                        ),),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("BUY NOW",style: TextStyle(
                          fontSize: 20,
                        ),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("PRODUCT DETAILS",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),),
          ],

        ),
      ),

    );

  }
}