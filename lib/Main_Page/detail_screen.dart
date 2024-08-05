import 'package:ebook/Main_Page/book.dart';
import 'package:flutter/material.dart';

import 'book_detail.dart';

class Detailscreen extends StatefulWidget {
  @required
  final BookDetail detail;
  const Detailscreen({Key? key, required this.detail}) : super(key: key);

  @override
  _Detail_screenState createState() => _Detail_screenState(detail);
}

class _Detail_screenState extends State<Detailscreen> {
  bool _isPressed = true;

  final BookDetail detail;

  _Detail_screenState(this.detail);
  @override
  Widget build(BuildContext context) {
    Color customColor = Color.fromARGB(255, 83, 14, 141);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),
        appBar: AppBar(
          backgroundColor: customColor,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
              icon: (_isPressed == false)
                  ? const Icon(
                Icons.bookmark,
                color: Colors.yellow,
                size: 30,
              )
                  : const Icon(
                Icons.bookmark_outline,
                color: Colors.black,
                size: 30,
              ),
            ),

            const SizedBox(width: 10),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              BookDescriptionDetail(
                  text: detail.text,
                  authors: detail.authors,
                  description: detail.description,
                  image: detail.image)
            ],
          ),
        ));
  }
}