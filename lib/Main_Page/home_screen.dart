import 'package:ebook/Main_Page/book.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color customColor = Color.fromARGB(255, 83, 14, 141);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              const SizedBox(
                height: 20,
              ), //for gap

              //for tab
              Container(
                  child : Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: customColor,
                            ),
                            child: Center(
                                child: Text("Everything",
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
                                child: Text("Ebooks",
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
                                child: Text("Magazine",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15
                                  ),)
                            )),

                      ],
                    ),

                  )

              ),


              const SizedBox(
                height: 10,
              ),

              // Science and More
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Science',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),

                  const SizedBox(
                    width: 180,
                    height: 10,
                  ),

                  Container(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'More',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      )),
                ],
              ),

              //gap between genre and book
              const SizedBox(
                height: 10,
              ),

              //container for book and title
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: BookDetail.listbooks.length,
                  itemBuilder: (context, i) => RecentUpdate(
                    detail: BookDetail.listbooks[i],
                  ),
                ),
              ),

              // Computer Science and More
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Computer Science',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),

                  const SizedBox(
                    width: 100,
                    height: 10,
                  ),

                  Container(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'More',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      )),
                ],
              ),

              //gap between genre and book
              const SizedBox(
                height: 10,
              ),

              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: BookDetail.listbooks.length,
                  itemBuilder: (context, i) => RecentUpdate(
                    detail: BookDetail.listbooks[i],
                  ),
                ),
              ),

              // Geography and More
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Geography',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),

                  const SizedBox(
                    width: 180,
                    height: 10,
                  ),

                  Container(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'More',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      )),
                ],
              ),

              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: BookDetail.listbooks.length,
                  itemBuilder: (context, i) => RecentUpdate(
                    detail: BookDetail.listbooks[i],
                  ),
                ),
              ),

            ],
          ),

        )


      ),
    );
  }
}


class RecentUpdate extends StatelessWidget {
  const RecentUpdate({Key? key, required this.detail}) : super(key: key);
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: detail.id,
                    child: Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
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
                  padding: EdgeInsets.only(right: 20),
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
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),

                      //authors
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: Text(
                          detail.authors,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 83, 14, 141)),
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