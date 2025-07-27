/// A simple model representing a book.
///
/// Each [Book] has an [id], [title], [author], [genre], [subject] and a
/// [description]. These fields are used for searching, grouping and displaying
/// information within the BookFlix application. Feel free to extend this
/// class with additional properties (e.g. publicationYear, rating) as needed.
class Book {
  final String id;
  final String title;
  final String author;
  final String genre;
  final String subject;
  final String description;

  const Book({
    required this.id,
    required this.title,
    required this.author,
    required this.genre,
    required this.subject,
    required this.description,
  });
}