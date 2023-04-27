
import 'package:flutter/material.dart';
import 'navbar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Column(
      children: [
        SizedBox(height: 120.0),

        Text("Welcome To",
            style: TextStyle(
              fontSize: 30,
            )),
        SizedBox(height: 10.0),

        Text("Meme Generator",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color : Colors.teal,
        )),

        SizedBox(height: 30.0),
        Center(
         child: ElevatedButton(
          child: Text("Get Started",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          onPressed: () {
    Navigator.of(context).pushNamed("/memes");

          },

  ),),
        SizedBox(height: 180.0),
        Image(image: AssetImage('assets/images/Minions.jpg'))

    ],
        ),
      );
  }
}
