import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: SingleChildScrollView(
         child: Stack(
          //  alignment: Alignment.center,
           children: [
             Container(
               height: 800,
               width: 410,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   colors: [
                     Color(0xff4B3EAE),
                     Color(0xffFFFFFF).withOpacity(0.90)
                   ],
                   begin: Alignment.centerRight,
                   end: Alignment.bottomCenter,
                   
                   )
               ),
               child: Padding(
                 padding: const EdgeInsets.only(top:30,left: 60),
                 child: Column(
                   children: [
                     Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "Today’s Weather",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              "Sunday, 8 March 2021",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                          ],
                        )
                      ],
                     ),
                   ],
                 ),
               ),
             ),
             Positioned(
               top: 130,
               left: 50,
               child: Container(
                 width: 315,
                 height: 165,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   color: Color(0xffFFFFFF).withOpacity(0.30),
                   gradient: LinearGradient(
                     colors: [
                       Color(0xffFFFFFF),
                        Color(0xffFFFFFF).withOpacity(0.30)
                     ],
                     
                     ),
                     border: Border.all(
                       color: Colors.white,
                       width: 3
                     )
                 ),
                 child: Row(
                   children: [
                     Image.asset(
                       "assets/Moon_cloud_fast_wind.png",
                       height: 700,
                       ),
                     Padding(
                       padding: const EdgeInsets.only(top:35 ),
                       child: Column(
                         children: [
                           Text(
                             "23°",
                             style: TextStyle(
                               fontSize: 72,
                               color: Colors.white,
                               fontWeight: FontWeight.bold
                             ),
                             ),
                             Text(
                               "Moon Cloud Fast Wind",
                               style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold
                               ),
                           )
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
             Positioned(
               top: 320,
               left: 60,
               child: Container(
                 width: 289,
                 height: 407, 
                 decoration: BoxDecoration(
                  color: Color(0xffFFFFFF).withOpacity(0.30),
                  borderRadius: BorderRadius.circular(40)
                 ),
               ),
             ),
             Positioned(
               top: 337,
               left: 50,
               child: Container(
                 width: 315,
                 height: 459,
                 
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(40), 
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 100),
                       child: Text(
                         "Future Weather",
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold
                         ),
                    ),
                     ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/Sun_cloud_angled_rain.png"),
                        Text(
                          "29°",
                          style: TextStyle(
                         fontSize: 36,
                         fontWeight: FontWeight.bold
                       ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Monday",
                              style: TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.bold
                       ), 
                        ),
                        Text(
                          "9 March 2021",
                          style: TextStyle(
                        //  color: Color(0xffDDDBF3)
                        color: Colors.black
                       ),
                          )
                        ],
                        )
                      ],
                    ),
                    Divider(
                      color: Color(0xffE0E0E0),
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/Sun_cloud_little_rain.png"),
                        Text(
                          "22°",
                          style: TextStyle(
                         fontSize: 36,
                         fontWeight: FontWeight.bold
                       ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tuesday",
                              style: TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.bold
                       ), 
                        ),
                        Text(
                          "10 March 2021",
                          style: TextStyle(
                        //  color: Color(0xffDDDBF3)
                        color: Colors.black
                       ),
                          )
                        ],
                        )
                      ],
                    ),
                    Divider(
                      color: Color(0xffE0E0E0),
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/Big_rain_drops.png"),
                        Text(
                          "19°",
                          style: TextStyle(
                         fontSize: 36,
                         fontWeight: FontWeight.bold
                       ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wednesday",
                              style: TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.bold
                       ), 
                        ),
                        Text(
                          "11 March 2021",
                          style: TextStyle(
                        //  color: Color(0xffDDDBF3)
                        color: Colors.black
                       ),
                          )
                        ],
                        )
                      ],
                    ),
                    Divider(
                      color: Color(0xffE0E0E0),
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/Sun_cloud_mid_rain.png"),
                        Text(
                          "28°",
                          style: TextStyle(
                         fontSize: 36,
                         fontWeight: FontWeight.bold
                       ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Thursday",
                              style: TextStyle(
                         fontSize: 13,
                         fontWeight: FontWeight.bold
                       ), 
                        ),
                        Text(
                          "12 March 2021",
                          style: TextStyle(
                        //  color: Color(0xffDDDBF3)
                        color: Colors.black
                       ),
                          )
                        ],
                        )
                      ],
                    )
                   ],
                 ),
               ),
             )
           ],
         ),
       ), 
      ),
    );
  }
}