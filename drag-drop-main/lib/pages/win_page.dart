import 'package:flutter/material.dart';

class WinPage extends StatefulWidget {
  const WinPage({Key? key}) : super(key: key);

  @override
  _WinPageState createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.dribbble.com/users/375867/screenshots/1512391/under-the-sea-ocean-water-aquarium-game-background-game-asset-side-scroller.png"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/");
            });
          },
          child: Container(
            height: 150,
            width: 800,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/win.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      // IconButton(
      //         icon: Container(
      //           alignment: Alignment.center,
      //           height: double.infinity,
      //           width: double.infinity,
      //             decoration: const BoxDecoration(
      //             color: Colors.black,
      //               image: DecorationImage(image: AssetImage("assets/win.png"),fit: BoxFit.cover,
      //             ),
      //             ),
      //         ),
      //             onPressed: () {
      //           setState(() {
      //             Navigator.of(context).pushNamed("/");
      //           });
      //     },
      // ),
    );
  }
}
