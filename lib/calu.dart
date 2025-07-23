import 'package:calculator/bmi.dart';
import 'package:flutter/material.dart';

class caluc extends StatefulWidget {
  const caluc({super.key});

  @override
  State<caluc> createState() => _calucState();
}

class _calucState extends State<caluc> {

  TextEditingController ctrl = TextEditingController();

  String Val1="",Val2="",optr="";

  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_drop_down,color: Colors.black,size: 40,),
        title: Text("Calculator    conventor",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.more_vert_rounded,color: Colors.black,size: 30,)
        ],

      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctrl,
              decoration: InputDecoration(
                  hintText: "select the button",
                  hintStyle: TextStyle(color: Colors.black,fontSize: 25),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),



                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [SizedBox(height: 80,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [SizedBox(width: 5,),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          Val1="";
                          Val2="";
                          optr="";
                          clk=false;
                          ctrl.clear();
                        });
                      }, child:Text("AC",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          if(ctrl.text.isNotEmpty){
                            ctrl.text=
                                ctrl.text.substring(0,ctrl.text.length-1);
                            if(clk&& Val2.isNotEmpty){
                              Val2=Val2.substring(0,Val2.length-1);
                            }
                            else if(!clk&&Val1.isNotEmpty)
                            {
                              Val1=Val1.substring(0,Val1.length-1);
                            }
                          }
                        });
                      }, child:Icon(Icons.cancel,color: Colors.black,size: 30,),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          if(clk){
                            if(Val2.startsWith("-"))
                            {  Val2=Val2.substring(1);}
                            else{
                              Val2="-$Val2";
                            }
                            ctrl.text=Val2;
                          }
                          else{
                            if(Val1.startsWith("-"))
                            {
                              Val1=Val1.substring(1);}
                            else{
                              Val1="-$Val1";
                            }
                            ctrl.text=Val1;
                          }

                        });
                      }, child:Text("+/-",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey, padding: EdgeInsets.symmetric(
                          vertical: 20
                      )
                      )),
                      ElevatedButton(onPressed: (){
                        ctrl.text="/";
                        optr="/";
                        clk=true;
                      }, child:Text("/",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [SizedBox(height: 50,),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 += "7";
                          ctrl.text = Val2;
                        }
                        else
                        {
                          Val1 += "7";
                          ctrl.text = Val1;
                        }
                      }, child:Text("7",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 += "8";
                          ctrl.text = Val2;

                        }
                        else
                        {
                          Val1 += "8";
                          ctrl.text = Val1;

                        }
                      }, child:Text("8",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 += "9";
                          ctrl.text=Val2;
                        }
                        else{
                          Val1  += "9";
                          ctrl.text=Val1;
                        }
                      }, child:Text("9",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        ctrl.text = "*";
                        optr = "*";
                        clk = true;
                      }, child:Text("*",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [SizedBox(height: 50,),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 += "4";
                          ctrl.text=Val2;

                        }
                        else{
                          Val1 += "4";
                          ctrl.text=Val1;
                        }
                      }, child:Text("4",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 +="5";
                          ctrl.text=Val2;
                        }
                        else{
                          Val1 +="5";
                          ctrl.text=Val1;
                        }
                      }, child:Text("5",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 +="6";
                          ctrl.text=Val2;
                        }
                        else{
                          Val1 +="6";
                          ctrl.text=Val1;
                        }
                      }, child:Text("6",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        ctrl.text = "-";
                        optr = "-";
                        clk = true;
                      }, child:Text("-",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [SizedBox(height: 50,),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 +="1";
                          ctrl.text=Val2;
                        }
                        else{
                          Val1 +="1";
                          ctrl.text=Val1;
                        }
                      }, child:Text("1",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 +="2";
                          ctrl.text=Val2;
                        }
                        else{
                          Val1 +="2";
                          ctrl.text=Val1;
                        }
                      }, child:Text("2",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 +="3";
                          ctrl.text=Val2;
                        }
                        else{
                          Val1 +="3";
                          ctrl.text=Val1;
                        }
                      }, child:Text("3",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        ctrl.text = "+";
                        optr = "+";
                        clk = true;
                      }, child:Text("+",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [SizedBox(width: 4,),
                      ElevatedButton(onPressed: (){
                        ctrl.text = "%";
                        optr = "%";
                        clk = true;
                      }, child:Text("%",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(clk){
                          Val2 +="0";
                          ctrl.text=Val2;
                        }
                        else{
                          Val1 +="0";
                          ctrl.text=Val1;
                        }
                      }, child:Text("0",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){

                        if(clk){
                          Val2 +=".";
                          ctrl.text=Val2;
                        } else{
                          Val1 +=".";
                          ctrl.text=Val1;
                        }
                      }, child:Text(".",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),
                      ElevatedButton(onPressed: (){
                        if(optr == "+"){
                          int a = int.parse(Val1);
                          int b = int.parse(Val2);

                          int res = a + b;
                          ctrl.text = res.toString();

                        }
                        {
                          if(optr == "-"){
                            int a = int.parse(Val1);
                            int b = int.parse(Val2);

                            int res = a-b;
                            ctrl.text = res.toString();
                          }
                        }
                        {
                          if(optr == "*"){
                            int a = int.parse(Val1);
                            int b = int.parse(Val2);

                            int res = a*b;
                            ctrl.text = res.toString();
                          }
                        }
                        {
                          if(optr == "%"){
                            double a =double.parse(Val1);
                            double b = double.parse(Val2);
                            double res= a%b;
                            ctrl.text=res.toString();
                          }
                        }
                        {
                          if(optr == "/"){
                            double a =double.parse(Val1);
                            double b = double.parse(Val2);
                            double res= a/b;
                            ctrl.text=res.toString();
                          }
                        }
                      }, child:Text("=",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 20
                          )
                      )),

                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

