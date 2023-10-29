import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    const imageUrl = "https://media.licdn.com/dms/image/D4D03AQHvvSVbkZ3eag/profile-displayphoto-shrink_400_400/0/1681139715707?e=1703116800&v=beta&t=CDkzN93sBYBPrLEGnzHMvIfHwbRw7vziOPHEk67gzB0"; 
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("Ritwaj Ranjan"),
                accountEmail: Text("ritwajranjan.om@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
             ),
          
         ),
         ListTile(
          leading: Icon(CupertinoIcons.home,
          color: Colors.white,
          
          ),
          title: Text(
            "Home",
            
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
              
            ),
          ),
         ),
         ListTile(
          leading: Icon(CupertinoIcons.profile_circled,
          color: Colors.white,
          
          ),
          title: Text(
            "Profile",
            
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
              
            ),
          ),
         ),
         ListTile(
          
          leading: Icon(CupertinoIcons.mail,
          
          color: Colors.white,
          
          ),
          title: Text(
            "Email me",
            
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
              
            ),
          ),
         ),
           ],
        ),
      ),
   );
  
  }
}
