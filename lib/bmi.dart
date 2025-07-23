import 'package:flutter/material.dart';


class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController ctrlh=TextEditingController();
  TextEditingController ctrlw=TextEditingController();


  double _Bmi = 0.0;
  String _bmistatus = "";

  ok() {
    final height = double.tryParse(ctrlh.text) ?? 0.0;
    final weight= double.tryParse(ctrlw.text) ?? 0.0;


    if (weight > 0 && height > 0) {
      setState(() {
        _Bmi = weight / ((height / 100) * (height / 100));
        _bmistatus = _viewStatus(_Bmi);
      });
    }
  }
  String _viewStatus(double Bmi){
    if(Bmi<18.5)
      return"UnderWeight";
    else if(Bmi<24.9)
      return "Normal";
    else if (Bmi <29.9)
      return "Overweight";

    else return "obses";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("BMI Calculator",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.settings)
        ],
      ),
      body:
      Column(
        children: [SizedBox(height: 150,),
          Center(
            child: Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        TextFormField(
                          controller: ctrlh,
                          decoration: InputDecoration(
                            hintText: "Enter the height",
                            border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          controller: ctrlw,
                          decoration: InputDecoration(
                            hintText: "Enter the Weight",
                            border: OutlineInputBorder()
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        ok();
                      }, child:Text("enter"))
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text("BMI: ${_Bmi.toStringAsFixed(2)}"),
                  SizedBox(height: 5,),
                  Text("Category: $_bmistatus"),
                ],
              ),

              
            ),
          )
        ],
      ),

    );
  }
}
