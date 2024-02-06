class BookModel {
  final String image;
  final String title;
  final String numOfBooks;

  BookModel({
    required this.image,
    required this.title,
    required this.numOfBooks,
  });
}

List<BookModel> bookModel = [
  BookModel(
      image: 'assets/images/inspiration.png',
      title: 'Computing',
      numOfBooks: '10 books'),
  BookModel(
      image: 'assets/images/inspiration.png',
      title: 'Engineering',
      numOfBooks: '16 books'),
  BookModel(
      image: 'assets/images/inspiration.png',
      title: 'Agriculture',
      numOfBooks: '20 books'),
  BookModel(
      image: 'assets/images/inspiration.png',
      title: 'Science',
      numOfBooks: '25 books'),
  BookModel(
      image: 'assets/images/inspiration.png',
      title: 'Health Technology',
      numOfBooks: '12 books'),
];
