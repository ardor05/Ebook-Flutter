class Book {
  String text;
  String authors;
  String description;
  String image;

  Book({
    required this.text,
    required this.authors,
    required this.description,
    required this.image,
  });
}

class BookDetail {
  final String id;
  final String text;
  final String authors;
  final String description;
  final String image;

  BookDetail({
    required this.id,
    required this.text,
    required this.authors,
    required this.description,
    required this.image,
  });

  static List<BookDetail> listbooks = [
    BookDetail(
      id: '1',
      text: "General Zoology",
      authors: 'Stephen W.Ziser',
      description:
      'The contents of the lab manual include : Orientation, Lab Safety, '
          'Animal Collection, Lab Skills & Microscopy, Animal Cells & Tissues',
      image: 'Genaral_Zoology.png',
    ),
    BookDetail(
      id: '2',
      text: "Tender Buttons",
      authors: 'Mark Twain',
      description:
      'A person who won’t read has no advantage over one who can’t read.',
      image: 'B.jpg',
    ),
    BookDetail(
      id: '3',
      text: "Making",
      authors: 'Louisa May Alcott',
      description:
      'Good books, like good friends, are few and chosen; the more select, the more enjoyable.',
      image: 'C.jpg',
    ),
    BookDetail(
      id: '4',
      text: 'Thinking of the moon',
      authors: 'Alcott Wiliam',
      description:
      'The more enjoyable. Danger is just a alert, no come from you but it make you die any where',
      image: 'R.jpg',
    ),
    BookDetail(
      id: '5',
      text: 'The Day the World Came to Town',
      authors: 'Alcott Wiliam',
      description:
      'Jim DeFede has been an award-winning journalist for sixteen years, first with the Spokesman-Review in Spokane, Washington, and then with the Miami New Times. His work has appeared in Talk, The New Republic, and Newsday. He is currently a metro columnist for the Miami Herald.',
      image: 'OIP.jpg',
    ),
  ];
}