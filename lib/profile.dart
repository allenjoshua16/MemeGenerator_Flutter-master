import 'package:flutter/material.dart';
import 'navbar.dart';

// void main() => runApp(MaterialApp(
//   // debugShowCheckedModeBanner: false,
//   home: ProfileCard(),
// ));

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  int accessLevel = 1;

  @override
  Widget build(BuildContext context) {

    print("Build method called");
    return Scaffold(
      drawer: NavBar(),
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile Page'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 25.0, 30.0, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Center(

              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/images/doge.png'),
                backgroundColor: Colors.white,
              ),
            ),

            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Text("@allen123",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),)
              ),
            ),

            Divider(
              color: Colors.teal,
              height: 50.0,
              thickness: 4.0,
            ),

            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0),

            Text(
              'Allen Joshua',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 25.0),

            Text(
              'ADDRESS',
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0),

            Text(
              'Mumbai',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 27.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),

                SizedBox(width: 10.0),

                Text(
                  '123456789',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),

            SizedBox(height: 20.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.teal,
                ),

                SizedBox(width: 10.0),

                Text(
                  'allen@dbit.in',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),

            SizedBox(height: 30.0),


            Text(
              'DATA ACCESS LEVEL',
              style: TextStyle(
                letterSpacing: 1.5,
              ),
            ),

            SizedBox(height: 10.0),

            Text(
              '$accessLevel',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 2.0,
              ),
            ),

          ],
        ),
      ),

      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor:Colors.grey[850],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up,
              color: Colors.teal,),
            label: "Like",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_down),
            label: "Dislike",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: "Comment",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            accessLevel +=1;
          });
        },
        child: Icon(Icons.move_up),
        backgroundColor: Colors.teal,
      ),

    );
  }
}