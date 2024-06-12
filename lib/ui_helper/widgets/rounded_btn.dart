import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;


  RoundedButton({
    required  this.btnName,
    this.icon,
    this.bgColor = Colors.greenAccent,
    this.textStyle,
    this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callBack!();
    },
      child: icon!=null? Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          Container(width: 10,),
          Text(btnName, style: textStyle,)
        ],
    ): Text(btnName, style: textStyle,),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20)
          )
        )
    ),
    );
  }

}