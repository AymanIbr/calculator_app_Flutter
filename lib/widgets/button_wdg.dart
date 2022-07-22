import 'package:flutter/material.dart';


class BottonWidgets extends StatelessWidget {
   BottonWidgets({Key? key ,
     required this.btnText ,
     required this.btnColor,
     required this.CallBack,
   }) : super(key: key);

   String? btnText ;
   Color? btnColor;
   Function? CallBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0xFFCFD2CF),
        child: ElevatedButton(
          onPressed: (){
          CallBack!(btnText);
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0
          ),
          child: Text(
            btnText! ,
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 40,
                color: btnColor,
            ),
          ),
        ),
      ),

    );
  }
}
