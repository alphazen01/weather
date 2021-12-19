import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/screens/details.dart';
import 'package:demo/widgets/custom_card.dart';
import 'package:demo/widgets/column_builder.dart';
import 'package:demo/widgets/weather_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor:  Color(0xffF1F0FA),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pasuruan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:24
                  ),
               ),
               Text(
                  "17.45 PM",
                  style: TextStyle(
                    
                    fontSize:12
                  ),
               ),
               SizedBox(
                 height: 8,
               ),
                CarouselSlider(
                    options: CarouselOptions(height: 300.0),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return WeatherCard();
                        },
                      );
                    }).toList(),
                  ),
                Container(
                   color: Color(0xff766CC1).withOpacity(0.35),
                  margin: EdgeInsets.only(top: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Transform.translate(
                        offset: Offset(0,-60),
                        child: Container(
                          height: 122,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ColumnBuilder(
                                  imageName: "Vector",
                                  label: "Humidity",
                                  value: "75 %",
                                ),
                                ColumnBuilder(
                                  imageName: "tabler_wind",
                                  label: "Wind",
                                  value: "8 km/h",
                                ),
                                ColumnBuilder(
                                  imageName: "Vector (2)",
                                  label: "Air Pressure",
                                  value: "1011",
                                ),
                                ColumnBuilder(
                                  imageName: "ic_round-visibility",
                                  label: "Visibility",
                                  value: "6 km",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                        Transform.translate(
                          offset:Offset(0,-40),
                          child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Next 7 Days",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                 IconButton(
                                   onPressed: (){
                                     Navigator.push(context, MaterialPageRoute(
                                       builder: (context)=>DetailsScreen()));
                                   }, 
                                   icon: Icon(Icons.arrow_forward_ios)
                                   )
                                ],
                              )
                            ],
                          ),
                                            ),
                        ),
                      Transform.translate(
                        offset: Offset(0,-40),
                        child: Container(
                            height: 140,
                            margin: EdgeInsets.only(top: 32),
                            child: ListView.builder(
                              // reverse: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index){
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Custom_Card(
                                   imageName: "Sun_cloud_angled_rain",
                                   lebel:  "06:00 AM",
                                   value: "23°" , 
                                   primary:index==0?true:false ,
                                  ),
                                );
                              }
                            ),
                          ),
                      ),
                    Divider(
                        thickness: 5,
                        indent: 180,
                        endIndent: 180,
                        color: Colors.white,
          
                       ) 
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



