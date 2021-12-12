import 'package:flutter/material.dart';

class ColumnBuilder extends StatelessWidget {
  final String? imageName;
  final String? label;
  final String? value;
  const ColumnBuilder({
    Key? key,
    this.imageName,this.label,this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Image.asset(
         "assets/$imageName.png",
         height: 20,
         width: 15,
         ),
         SizedBox(
           height: 5,
         ),
       Padding(
         padding: const EdgeInsets.only(left: 8),
         child: Text(
           "$value",
           style:TextStyle(
             fontSize: 16
           ),
           ),
       ),
       Text("$label")
     ],
    );
  }
}
