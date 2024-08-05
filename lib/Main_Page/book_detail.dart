import 'package:ebook/viewpdf.dart';
import 'package:flutter/material.dart';

@immutable
class BookDescriptionDetail extends StatelessWidget {
  final String text;
  final String authors;
  final String description;
  final String image;

  const BookDescriptionDetail(
      {Key? key,
        required this.text,
        required this.authors,
        required this.description,
        required this.image})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Color customColor = Color.fromARGB(255, 83, 14, 141);

    return GestureDetector(
        child: Container(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.blue,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/" + image,
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),

                    const SizedBox(
                      width: 20,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //title
                        SizedBox(
                          width: 150,
                          child: Text(
                            text,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        Text(
                          authors,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                            child: Row(
                              children: [
                                Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border:
                                      Border.all(color: customColor),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Fiction',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 83, 14, 141)),
                                      ),
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Colors.blueAccent),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Literary',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 83, 14, 141)),
                                      ),
                                    ))
                              ],
                            )),

                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: customColor,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [

                              ElevatedButton(
                                onPressed: ()  {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ReadingBook(
                                        pdfPath: "assets/Zoology_Lab_Manual.pdf",
                                      ),
                                    ),
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 83, 14, 144),
                                  ),
                                ),
                                child: Text('View PDF'),
                              )


                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Book Description',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),

                const Divider(
                  height: 20,
                  color: Colors.grey,
                ),

                const SizedBox(
                  height: 10,
                ),

                Text(description,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),

                const Padding(
                  padding: EdgeInsets.only(top: 18.0, left: 19),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'show less',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            )));
  }
}