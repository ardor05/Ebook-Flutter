import 'package:ebook/Main_Page/home_page.dart';
import 'package:ebook/saved_page/savepage.dart';
import 'package:flutter/material.dart';
import 'package:ebook/Main_Page/book.dart';
import '../setting.dart';
import 'search_screen.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Color customColor = Color.fromARGB(255, 83, 14, 141);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),

      body: SearchScreen(),

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