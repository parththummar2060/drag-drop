import 'dart:math';
import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  Map <String,bool> m2 = {

  };

  Map <String,String>m1 = {
    "🐄":  "Cow",
    "🐕":  "Dog",
    "🐈":  "Cat",
    "🐘":  "Elephant",
    "🐇":  "rabbit",
    "🐒":  "Monkey",
  };

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Find Name"),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        centerTitle: true,),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.dribbble.com/users/375867/screenshots/1512391/under-the-sea-ocean-water-aquarium-game-background-game-asset-side-scroller.png"),fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: m1.keys.map((e) => Draggable(
                data: e,
                child: Emoji(emoji: m2[e] == true ? "✔": e),
                feedback: Emoji(emoji: e),
                childWhenDragging: const Emoji(emoji: "😍"),
              ),
              ).toList(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: m1.entries.map((e) => buiddragtarget(e)).toList()..shuffle(Random(3))
            )
          ],
        ),
      ),
    );
  }
  Widget buiddragtarget(e){
    return DragTarget<String>(
      builder: (BuildContext context, List <String?> incoming, List rejected){
        if(m2[e.key]==true)
        {
          return Container(
            color: Colors.transparent,
            alignment: Alignment.center,
            height: 80,
            width: 200,
            child: const Text("😎",style: TextStyle(fontSize: 50),),
          );
        }
        else{
          return Container(
            child: Text(e.value,style: const TextStyle(fontSize: 25),),
            alignment: Alignment.center,
            color: Colors.transparent,height: 80,width: 200,);
        }
      },
      onWillAccept: (data) => data == e.key,
      onAccept: (data){
        setState(() {
          m2[e.key] = true;
          i++;
          if(i==6)
            {
              Navigator.of(context).pushNamed("2");
            }
        });
      },
      onLeave: (data){},
    );
  }
}

class Emoji extends StatelessWidget {
  const Emoji({Key? key, required this.emoji}) : super(key: key);

  final String emoji;
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(emoji,style: const TextStyle(fontSize: 50),),
      ),
    );
  }
}