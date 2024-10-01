import "package:flutter/material.dart";

void main(){
  runApp(const ColorToggle());
}

class ColorToggle extends StatefulWidget{
  const ColorToggle({super.key});

  @override
  State<ColorToggle> createState() => _ColorToggleState();
}

class _ColorToggleState extends State<ColorToggle>{

  bool col=true;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text("Color Toggle"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            color:(col) ? Colors.red : Colors.black ,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if (col) {
                col = false;
              } else {
                col = true;
              }

            setState(() {
              
            });
            

        },
        child:const Text("Toggle"),
        ),
     ),
    );
  }
}