import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/custom_card.dart';
import 'package:demo/widgets/weather_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
         SafeArea(
         child: Scaffold(
          backgroundColor: Color(0xffF1F0FA),
          body: 
             SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 410,
                        height: 490,
                        // color: Color(0xffF1F0FA),
                        color: Color(0xffF1F0FA),
                        child: Column(
                           children: [
                             SizedBox(height: 20,),
                              Text(
                              "Pasuruan",
                               style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("17.45 PM"),
                            // SizedBox(height: 32,),
                             CarouselSlider(
                              options: CarouselOptions(height: 400.0),
                              items: [1,2,3,4,5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return WeatherCard();  
                                  },
                                );
                              }).toList()
                             ), 
                           ],
                         ),
                      ),
                       Container(
                    height:700 ,
                    width: 410,
                    color:Color(0xffD4D1F0)
                  ),
                    ],
                  ), 
                   Positioned(
                     top: 550,
                     left: 45,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text(
                           "Today",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold
                           ),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                         Row(
                           children: [
                             Text(
                               "Next 7 Days ",
                               style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold
                               ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                         ],
                         ),
                       ],
                     )
                     ),
                     Positioned(
                       top: 600,
                       child: SingleChildScrollView(
                         child: Row(
                           children: [
                           Custom_Card()
                           ],
                         ),
                       ),
                     ),
                  Positioned(
                    top: 400,
                    left: 40,
                    child: Container(
                      height: 120,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xffFFFFFF),
                      ),
                        child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [ 
                                 Column(
                                  children: [
                                    Image.asset(
                                      "assets/Vector.png",
                                      height: 20,
                                      width: 15,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "75%",
                                        style:TextStyle(
                                          fontSize: 16
                                        ),
                                        ),
                                    ),
                                    Text("Humidity")
                                  ],
                                ),
                            
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Image.asset("assets/Vector_(3).png"),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 1),
                                  child: Image.asset("assets/Vector_(2).png"),
                                ),
                                Image.asset("assets/Vector_(1).png"),
                                Text(
                                  "8km/h",
                                  style:TextStyle(
                                  fontSize: 16
                                  ),
                                ),
                                Text("Wind")
                              ],
                            ),
                             SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Image.asset("assets/Vector_(4).png"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "1011",
                                  style:TextStyle(
                                  fontSize: 16
                                  ),
                                  ),
                                  Text("Air Pressure")
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Icon(Icons.visibility_rounded,
                                color:Color(0xff4B3EAE),
                                ),
                                Text(
                                  "6 km",
                                  style:TextStyle(
                                  fontSize: 16
                                  ),
                                  ),
                                  Text("Visibility")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                 
                ],
              ),
              
            ),
          
        ),
      
    );
  }
}


