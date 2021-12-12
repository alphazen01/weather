import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/custom_card.dart';
import 'package:demo/widgets/column_builder.dart';
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
                     top: 575,
                     left: 5,
                     child: Container(
                       width: 410,
                       margin: EdgeInsets.symmetric(horizontal: 10),
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
                       ),
                     )
                     ),
                    //  Positioned(
                    //    top: 600,
                    //    child: SingleChildScrollView(
                    //      child: Row(
                    //        children: [
                    //        Custom_Card()
                    //        ],
                    //      ),
                    //    ),
                    //  ),
                    Container(
                      margin: EdgeInsets.only(top: 620),
                      height:320,
                      child: ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Custom_Card( 
                                  color: Colors.white,
                                  lebel: "06:00 AM",
                                  imageName: "Cloud_3_zap",
                                  value: "24°",
                                ),
                                Custom_Card(
                                  
                                  lebel: "08:00 AM",
                                  imageName: "Cloud_3_zap",
                                  value: "26°",
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          );
                        }
                        ),
                    ),
                  Positioned(
                    top: 420,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal:40 ),
                      height: 120,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xffFFFFFF),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [ 
                               ColumnBuilder(
                                 imageName: "Vector",
                                 value: "75 %",
                                 label: "Humidity",
                               ),
                               ColumnBuilder(
                                 imageName: "Vector",
                                 value: "75 %",
                                 label: "Humidity",
                               ),
                               ColumnBuilder(
                                 imageName: "Vector",
                                 value: "75 %",
                                 label: "Humidity",
                               ),
                               ColumnBuilder(
                                 imageName: "Vector",
                                 value: "75 %",
                                 label: "Humidity",
                               ),
                  
                              
                             
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



