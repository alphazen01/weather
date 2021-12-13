import 'package:demo/widgets/daily_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color>clrList=[
     Color(0xff00CC39),
      Color(0xffFF4343),
      Color(0xffFFBE3C),
      Color(0xff00CC39),
      Color(0xffFF4343),
      Color(0xffFFBE3C),
      Color(0xff00CC39),
      Color(0xffFF4343),  
    ];
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
                     Container(
                       color: Colors.teal,
                       child: Row(
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
                 child:Container(
                  height: 459,
                  child: ListView.builder(
                    scrollDirection:Axis.vertical ,
                    itemCount: 8,
                    itemBuilder: (context,index){
                      var clr=clrList[index%clrList.length];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: DailyCard(
                          
                          
                          imageName: "Sun_cloud_angled_rain",
                          value: "29°",
                          label:"Future",
                          blabel: "Monday",
                          slabel: "9 March 2021",
                        ),
                      );
                    }
                    ), 
                 )
               ),
             )
           ],
         ),
       ), 
      ),
    );
  }
}

