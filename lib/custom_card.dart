import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  const Custom_Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 238,
              height: 330,
            ),
            Positioned(
              top:30,
              child: Container(
                width: 230,
                height: 274,
                padding: EdgeInsets.only(bottom: 25),
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
                 borderRadius: BorderRadius.circular(40),
                 boxShadow: [
                   BoxShadow(
                    color:Color(0xff4B3EAE).withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 25,
                    offset: Offset(0,7)  
                   )
                 ] 
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "06:00 AM",
                         style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.white 
                        ),
                        ),
                    ),
                   Image.asset("assets/Cloud_3_zap.png"),
                    Text(
                      "24°",
                      style: TextStyle(
                       fontSize: 72,
                       fontWeight: FontWeight.bold,
                       color: Colors.white 
                      ),
                      ),   
                  ],
                ),
              ),
            ),
          ]   
        ),
      ],
    );
  }
}