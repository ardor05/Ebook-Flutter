import 'package:ebook/Main_Page/book.dart';
import 'package:ebook/Main_Page/detail_screen.dart';
import 'package:ebook/const/textfield.dart';
import 'package:flutter/material.dart';
import 'package:auto_height_grid_view/auto_height_grid_view.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Color customColor = Color.fromARGB(255, 83, 14, 141);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SafeArea (
            child: Column(
                children: [

                  const SizedBox(
                    height: 10,
                  ), //for gap

                  MyTextField(
                    hintText: "Search",
                    icon: Icons.search ,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Text("SEARCH RESULT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),//for gap

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
                          )
                      )
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                      child: Center(
                        child: Expanded(
                          child: AutoHeightGridView(
                            itemCount: BookDetail.listbooks.length,
                              crossAxisCount: 2,
                                mainAxisSpacing: 50.0,
                                crossAxisSpacing: 50.0,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, i) => SearchBook(
                              detail: BookDetail.listbooks[i],
                            ),
                            //scrollDirection: Axis.vertical,

                          ),
                        ),

                          )


                      )
                ]
            ),
          ),


        ),
      )

    );
  }
}

class SearchBook extends StatelessWidget {
  const SearchBook({Key? key, required this.detail}) : super(key: key);
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Column(
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
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/' + detail.image,
                        ),
                      ),
                    ),
                  ),

                ),

                Container(
                  padding: EdgeInsets.only(right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(
                        height: 10,
                      ),

                      //text
                      SizedBox(
                        width: 150,
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
                    ],
                  ),
                ),
              ],
            ),

        ],
      ),
    );
  }
}
