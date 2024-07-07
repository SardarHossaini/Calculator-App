import "package:flutter/material.dart";
void main(){
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
      child: ElevatedButton(
        onPressed: (){},
        child: Text(btntxt,style: TextStyle(
          fontSize: 35,color: txtcolor,
        ),
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.lightGreenAccent,
        //   foregroundColor: Colors.white,
        //   title: Text("Calculator"),
        //   centerTitle: true,
        // ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
          //   Calculator display
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.all(10),
                  child: Text("0",textAlign: TextAlign.left,style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [],
              )
          ],),
        ),
      ),
    );
  }
}
