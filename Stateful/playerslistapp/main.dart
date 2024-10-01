import "package:flutter/material.dart";

void main(){
  runApp(const PlayerList());
}

class PlayerList extends StatefulWidget{
  const PlayerList({super.key});

  @override
  State<PlayerList> createState()=> _PLayerListState();
}

class _PLayerListState extends State<PlayerList>{
  List playerList=[
    "https://media.gettyimages.com/id/111481432/photo/indias-cricket-team-captain-mahendra-singh-dhoni-poses-with-the-icc-cricket-world-cup-trophy.jpg?s=612x612&w=0&k=20&c=N241AWEijEbVzTwtJcQc52iixAO1YJubVjWh000Zbvw=",
"https://crictoday.com/wp-content/uploads/2024/09/Sachin-Tendulkar.webp",
"https://wallpapers.com/images/featured/virat-kohli-pictures-yc8dfpcjssp3s4se.jpg",
"https://images.hindustantimes.com/img/2024/07/08/550x309/PTI07-01-2024-000012B-0_1720443879123_1720443893902.jpg",
"https://wallpapers.com/images/featured/kl-rahul-a80d7917fmi9qi3d.jpg",
  
    ];
  int index=0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PlayerList"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Image.network(
              playerList[index],
              height:300,
              ),
              
              ],
            ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if((index<playerList.length-1)){
              index++;
            }else{
              index=0;
            }
            setState((){});
          },
          child: const Text("Next"),
          
           ),
      ),
    );
  }
}