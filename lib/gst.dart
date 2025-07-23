import 'package:flutter/material.dart';


class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {

  TextEditingController ctrl1=TextEditingController();
  TextEditingController ctrl2=TextEditingController();
  double _gst=0.0;
  double _total=0.0;
  double _price=0.0;
  exclusive(){
  final price = double.tryParse(ctrl1.text)??0.0;
  final gst = double.tryParse(ctrl2.text)??0.0;
  setState(() {
    _gst = (price * gst)/100;
    _total = price+_gst;
  });
  
  }
  inclusive(){
    final price = double.tryParse(ctrl1.text)??0.0;
    final gst = double.tryParse(ctrl2.text)??0.0;

    setState(() {
      _gst = price * 100/ (100 + gst);
      _price = price - _gst;
      _total = price;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("GST Calculator",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
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
                 Column(
                   children: [
                     SizedBox(height: 20,),
                     TextFormField(
                       controller: ctrl1,
                       decoration: InputDecoration(
                           hintText: "BILL AMOUNT",
                           border: OutlineInputBorder()

                       ),
                     ),
                     SizedBox(height: 20,),
                     TextFormField(
                       controller: ctrl2,
                       decoration: InputDecoration(
                           hintText: "GST",
                           suffixIcon: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("%",style: TextStyle(color: Colors.black,fontSize: 20),),
                           ),
                           border: OutlineInputBorder()

                       ),
                     ),
                   ],
                 ),
                  Row(
                    children: [SizedBox(height: 100,),
                      SizedBox(width: 50,),
                      ElevatedButton(onPressed: (){
                        exclusive();
                      }, child:Text("Exclusive")),
                      SizedBox(width: 70,),
                      ElevatedButton(onPressed: (){
                        inclusive();
                      }, child:Text("Inclusive")),
                    ],
                  ),
                  Text("GST: ${_gst.toStringAsFixed(2)}"),
                  Text("total: ${_total.toStringAsFixed(0)}")

                ],
              ),


            ),
          )
        ],
      ),
    );
  }
}
