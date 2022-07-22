import 'package:calculator_app/widgets/button_wdg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CalculatoreApp extends StatefulWidget {
   const CalculatoreApp({Key? key}) : super(key: key);


  @override
  State<CalculatoreApp> createState() => _CalculatoreAppState();
}

class _CalculatoreAppState extends State<CalculatoreApp> {

  String exp = '';
  String top = '';
  double num1 = 0 ;
  double num2 = 0 ;
  String op = '';

  void numClick(String btnText){
 if(btnText == '⌫'){
       setState( () {
          exp = "";
          top = '';
       });
        num1 = 0 ;
        num2 = 0 ;
 }else if (btnText == 'C'){
   setState((){
     exp = "";
   });
 }
 else if (btnText == '%'||btnText == '/'||btnText == '×'||btnText == '-'||btnText == '+'){
        op = btnText ;
        num1 = double.parse(exp);
       setState(() {
         exp = '';
         top = num1.toString();
         top += btnText;
       });
 }
 else if (btnText == '.'){
   if(exp.contains('.')){}
   else{
     setState(() {
       exp += btnText ;
     });
   }
 }
 else if (btnText == '='){
  num2 = double.parse(exp);
  top += exp;
  switch(op){
    case '+':{
      exp = (num1+num2).toString();
    }break;
    case '×':{
      exp = (num1*num2).toString();
    }break;
    case '-':{
      exp = (num1-num2).toString();
    }break;
    case '%':{
      exp = (num1%num2).toString();
    }break;
    case '/':{
     num2 ==0 ?exp='invalid Operation' : exp = (num1/num2).toString();
    }break;
    default :break ;
  }
  setState((){

  });
 }
 else {

   setState((){
     exp += btnText;
   });
 }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Calculatore',
          style: GoogleFonts.nunito(
            fontSize: 26,
            // fontWeight: FontWeight.bol
          ),
        ),
        centerTitle: true,
        // backgroundColor: Colorsrs.transparent,
        // elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              width: 411,
              height: 100,
              // color: Colors.white,
              child: Text(top,
                style: TextStyle(
                  fontSize: 25
                ),
              ),
            ),
            Spacer(flex: 1,),
            Divider(
              thickness: 0.3,
              color: Colors.green,
              indent: 30,
              endIndent: 30,
              height: 60,
            ),
            Container(
              alignment: Alignment.topRight,
              width: 411,
              height: 60,
              // color: Colors.white,
              child: Text(exp,
                style: TextStyle(
                    fontSize: 25
                ),
              ),
            ),
            Row(
              children: [
                Expanded(child: BottonWidgets(btnText:"⌫",btnColor: Colors.red,CallBack: numClick, )),
                Expanded(child: BottonWidgets(btnText:"C",btnColor: Colors.green,CallBack: numClick , )),
                Expanded(child: BottonWidgets(btnText:"%" ,btnColor:  Colors.green,CallBack: numClick,)),
                Expanded(child: BottonWidgets(btnText:"/",btnColor:  Colors.green,CallBack: numClick )),
              ],
            ),
            SizedBox(height: 13,),
            Row(
              children: [
                Expanded(child: BottonWidgets(btnText:"7",btnColor: Colors.black,CallBack: numClick )),
                Expanded(child: BottonWidgets(btnText:"8",btnColor: Colors.black ,CallBack: numClick )),
                Expanded(child: BottonWidgets(btnText:"9" ,btnColor:  Colors.black,CallBack: numClick)),
                Expanded(child: BottonWidgets(btnText:"×" ,btnColor:  Colors.green,CallBack: numClick)),
              ],
            ),
            SizedBox(height: 13,),
            Row(
              children: [
                Expanded(child: BottonWidgets(btnText:"4",btnColor: Colors.black,CallBack: numClick )),
                Expanded(child: BottonWidgets(btnText:"5",btnColor: Colors.black ,CallBack: numClick )),
                Expanded(child: BottonWidgets(btnText:"6" ,btnColor:  Colors.black,CallBack: numClick)),
                Expanded(child: BottonWidgets(btnText:"-" ,btnColor:  Colors.green,CallBack: numClick)),
              ],
            ),
            SizedBox(height: 13,),
            Row(
              children: [
                Expanded(child: BottonWidgets(btnText:"1",btnColor: Colors.black,CallBack: numClick )),
                Expanded(child: BottonWidgets(btnText:"2",btnColor: Colors.black ,CallBack: numClick )),
                Expanded(child: BottonWidgets(btnText:"3" ,btnColor:  Colors.black,CallBack: numClick)),
                Expanded(child: BottonWidgets(btnText:"+" ,btnColor:  Colors.black,CallBack: numClick)),
              ],
            ),
            SizedBox(height: 13,),
            Row(
              children: [
                Expanded(child: BottonWidgets(btnText:"+/-",btnColor: Colors.black ,CallBack: numClick )),
                Expanded(child: BottonWidgets(btnText:"0" ,btnColor:  Colors.black,CallBack: numClick)),
                Expanded(child: BottonWidgets(btnText:"." ,btnColor:  Colors.black,CallBack: numClick)),
                Expanded(child: BottonWidgets(btnText:"=" ,btnColor:  Colors.black,CallBack: numClick)),
              ],
            ),
            SizedBox(height: 30,),

          ],

        ),

      ),

    );
  }
}



