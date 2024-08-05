import 'package:ebook/search_page/searchpage.dart';
import 'package:ebook/setting.dart';
import 'package:flutter/material.dart';
import '../saved_page/savepage.dart';
import 'home_screen.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    Color customColor = Color.fromARGB(255, 83, 14, 141);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: customColor,
        title: const Center(
          child: Text(
            'Libry',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body: HomeScreen(),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 19, 18, 18),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Home()));
                // Navigate to Home
              },
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Search()));
                // Navigate to Search
              },
            ),
            IconButton(
              icon: Icon(Icons.bookmark, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Save()));

                // Navigate to Saved
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Profile()));
                // Navigate to Profile (current screen)
              },
            ),
          ],
        ),
      ),
    );
  }
}