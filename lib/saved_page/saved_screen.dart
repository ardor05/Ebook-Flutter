import 'package:ebook/Main_Page/book.dart';
import 'package:ebook/Main_Page/detail_screen.dart';
import 'package:ebook/const/textfield.dart';
import 'package:flutter/material.dart';


class SaveScreen extends StatelessWidget {
  const SaveScreen({ Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Color customColor = Color.fromARGB(255, 83, 14, 141);

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 19, 18, 18),

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Text(
                    'Saved',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    height: 1,
                    color: customColor,
                  ),

                  const SizedBox(
                    height: 10,
                  ), //for gap

                  MyTextField(
                    hintText: "Search",
                    icon: Icons.search ,
                  ), //for gap

                  const SizedBox(
                    height: 20,
                  ),

                  Container(

                      child : Center(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Icon(Icons.filter_alt_sharp, color: Colors.white),

                              Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: customColor,
                                  ),

                                  child: Center(
                                      child: Text("Downloaded",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15
                                        ),)
                                  )),

                              Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: customColor,
                                  ),
                                  child: Center(
                                      child: Text("Finished",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15
                                        ),)
                                  )),

                              Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: customColor,
                                  ),
                                  child: Center(
                                      child: Text("Format",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15
                                        ),)
                                  )),
                            ],
                          )
                      )
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 1500,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: BookDetail.listbooks.length,
                      itemBuilder: (context, i) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SavedBook(
                          detail: BookDetail.listbooks[i],
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(
                    height: 20,
                  ),


                ]
            ),
          ),
        )

    );
  }
}

class SavedBook extends StatelessWidget {
  const SavedBook({Key? key, required this.detail}) : super(key: key);
  final BookDetail detail;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Detailscreen(detail: detail),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: detail.id,
                  child: Container(

                    height: 200,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/' + detail.image,
                        ),
                      ),
                    ),
                  ),

                ),

                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(
                        height: 10,
                      ),

                      //text
                      SizedBox(
                        width: 180,
                        child: Text(
                          detail.text,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),

                      //authors
                      SizedBox(
                        width: 150,
                        child: Text(
                          detail.authors,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 83, 14, 141)),
                        ),
                      ),

                      //decription
                      SizedBox(
                        width: 150,
                        height: 80,
                        child: Text(
                          detail.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
