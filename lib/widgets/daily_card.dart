import 'package:flutter/material.dart';

class DailyCard extends StatelessWidget {
  
  final String? label;
  final String? imageName;
  final String? value;
  final String? blabel;
  final String? slabel;
  final Color?color;
  final bool?hasDivider;
 
  const DailyCard({
    
    Key? key,
    this.imageName,this.label,this.value,
    this.blabel,this.slabel,this.color,
    this.hasDivider

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return Container(
      color: color,
     
      child: Column(
        children: [
          Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  "$label",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
             ),
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Image.asset("assets/$imageName.png"),
                 Text(
                   "$value",
                   style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "$blabel",
                       style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ), 
                 ),
                 Text(
                   "$slabel",
                   style: TextStyle(
                 //  color: Color(0xffDDDBF3)
                 color: Colors.black
                ),
                   ),
                  
                 ],
                 )
               ],
             ),
             
            ],
          ),
          
         hasDivider==true? Divider(
            thickness: 3,
            color:Colors.red,
          ):Divider(
            thickness: 0,
          )
        ],
      ),
    );
  }
}