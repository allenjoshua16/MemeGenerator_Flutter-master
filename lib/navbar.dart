import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        // padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/doge.png'),
                  backgroundColor: Colors.white,
              ),

              decoration: BoxDecoration(

                image: DecorationImage(
                  image: NetworkImage(
                      "https://4kwallpapers.com/images/wallpapers/valley-landscape-aesthetic-mountains-gradient-background-3840x2160-4589.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text("Allen Joshua",
                  style: TextStyle(
                fontSize: 15,
              )),
              accountEmail: Text("allen@dbit.in",
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Home",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              onTap: () {
                Navigator.of(context).pushNamed("/home");
              },
             ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Memes",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              onTap: () {
                Navigator.of(context).pushNamed("/memes");

                },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Profile Page",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              onTap: () {
                Navigator.of(context).pushNamed("/profile");
              },
            ),

          ]
      ),

    );
  }
}