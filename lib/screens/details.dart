import 'package:demo/widgets/daily_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {

  const DetailsScreen({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
             gradient: LinearGradient(
                colors: [
                  Color(0xff4B3EAE),
                  Color(0xff766CC1),
                  Color(0xff4B3EAE),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios),
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    children: [
                      Text(
                        "Today’s Weather",
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                      Text("Sunday, 8 March 2021"),
                     
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
                   Container(
                    //  width: 286,
                    //  height: 165,
                     decoration: BoxDecoration(
                       color: Color(0xff766CC1),
                       borderRadius: BorderRadius.circular(40),
                       border: Border.all(
                         width: 2,
                         color: Colors.white
                       )
                     ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Image.asset(
                            "assets/Moon_cloud_fast_wind.png",
                           
                            ),
                           
                          Column(
                            children: [
                              Text(
                                "23º",
                                 style: TextStyle(
                                 fontSize: 72
                              ),
                              ),
                              Text(
                                "Moon Cloud Fast Wind",
                                 style: TextStyle(
                                 fontSize: 12
                              ),
                              ),
    
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                      Transform.translate(
                        offset: Offset(0,-20),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(40),
                               color: Colors.white.withOpacity(0.30),
                            ),
                            height: 200,
                            width: MediaQuery.of(context).size.width -100,
                          ),
                        ),
                      ),
                        Container(
                        padding: EdgeInsets.only(bottom: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                             color: Colors.white,
                          ),
                        
                          
                          child: Column(
                            children: [
                             Text(
                                "Future Weather",
                                 style: TextStyle(
                                 fontSize: 18
                              ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: 7,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (contex,index){
                                  return DailyCard(
                                    value: "23º",
                                    imageName: "Sun_cloud_angled_rain",
                                    date: "9 Marche 2021",
                                    day:"Monday" ,
                                  );
                                }
                                ),
                            ],
                          ),
                        ),
                      ],
                    )
                 
          ],
        ),
      ),
    ),
    );
  }
}

