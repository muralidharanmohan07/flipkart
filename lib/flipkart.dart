import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flipkart/flipkartdesc.dart';
import 'package:flipkart/flippro2.dart';
import 'package:flipkart/flippro3.dart';
import 'package:flutter/material.dart';
class  vivo extends StatefulWidget {
  const vivo   ({super.key});

  @override
  State<vivo> createState() => _vivoState();
}
List item =[
  'assets/img_1.png',
  'assets/img_2.png',
  'assets/img_3.png',
  'assets/img_4.png',
  'assets/img_5.png',
];
List pass =[
  'assets/img_21.png',
  'assets/img_19.png',
  'assets/img_20.png',
  'assets/img_18.png',
  'assets/img_22.png',

];

class _vivoState extends State<vivo> {
  int currentindex = 0;
  int _index = 0;
  final pages = [
  ];
  void press (a)
  {
    setState(() {
      _index = a;

    });
  }
  bool isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          toolbarHeight: 120,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyan,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset("assets/img.png")),
                          Text("Flipkart",style: TextStyle(color: Colors.white,
                              fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset("assets/img.png")),
                          Text("Grocery",style: TextStyle(color: Colors.white,
                              fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
      
              Row(
      
                children: [
                  Column(
                    children: [
                      Switch(
                        value: isSwitched,
                        onChanged: _toggleSwitch,
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                      Text("ON/OFF",style: TextStyle(fontSize: 15),),
      
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 320,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Container(
                          width: 50,
                          child: Row(
                            children: [
                              Icon(Icons.mic),
                              Icon(Icons.camera_alt),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 1.8,
                  enableInfiniteScroll: true,
                  animateToClosest: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 5,
                itemBuilder: (BuildContext context,
                    int itemindex,
                    int pageviewindex)

      
                {
                  return Container(
                    height: 400,
                    width: 800,
                    decoration: BoxDecoration(
                        border: Border.all( color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(item[itemindex]),
                          fit: BoxFit.fill,
                        )
                    ),
                  );
      
                },
              ),
              DotsIndicator(
                dotsCount: 5,
                position: currentindex.toInt(),
                decorator: DotsDecorator(
                    activeColor: Colors.cyan,
                    size: Size.square(4.0),
                    activeSize: Size.square(5.0),
                    activeShape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(2))
                ),),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 400,
                child:
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    addRepaintBoundaries:true,
                    addAutomaticKeepAlives: true,
                    shrinkWrap: false,
                    itemCount: 5,
                    itemBuilder: ( BuildContext con, index)
                    {
      
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(pass[index]),
                             fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => desc() ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black26,width: 5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            child: Image.asset("assets/img_17.png",
                            fit: BoxFit.contain,
                            alignment: Alignment.center,),

                          ),
                        ),
                      ),
                      Text("@ 39999",style: TextStyle(color: Colors.black,fontSize: 20),),
      
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> pro2()),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black26,width: 5),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:AssetImage("assets/img_23.png"),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      Text("@12000",style: TextStyle(color: Colors.black,fontSize: 20),),

                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> pro3()),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black26,width: 5),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/img_9.png"),
                              fit: BoxFit.fitHeight
                            ),
                          ),

                        ),
                      ),
                      Text("@1999",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      child: GridView.builder
                        (gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 2,
                      ),
                          scrollDirection: Axis.vertical,
                          itemCount: 6,
                          itemBuilder: (context,index){
                            return Column(
                              children: [
                                Image.asset("assets/img_10.png"),
                              ],
                            );
                          }
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}





