import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  final String? lebel;
  final String? imageName;
  final String? value;
  final bool primary;
  
  final IconData?icon;
  const Custom_Card({
    Key? key,
    this.lebel,this.imageName,this.value,this.icon, this.primary=false
    
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
                  color: primary?null:Colors.white,
                  gradient:primary? LinearGradient(
                  colors: [
                     Color(0xff4B3EAE),
                     Color(0xff766CC1),
                     Color(0xff4B3EAE),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                 ):null,
                 borderRadius: BorderRadius.circular(40), 
                ),
                child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "$lebel",
                         style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color:primary? Colors.white:Colors.black 
                        ),
                        ),
                    ),
                   Image.asset("assets/$imageName.png"),
                    Text(
                      "$value",
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