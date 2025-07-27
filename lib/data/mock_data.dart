import '../models/book.dart';

/// A collection of sample books used in the application.
///
/// These books provide enough variety across genres, authors and subjects to
/// demonstrate searching and filtering within the app. You can modify,
/// remove or extend this list to fit your needs. When integrating a real
/// backend API, you may replace usage of this list with network calls.
final List<Book> mockBooks = [
  const Book(
    id: '1',
    title: '1984',
    author: 'George Orwell',
    genre: 'Dystopian',
    subject: 'Politics',
    description:
        'Dystopian novel about a totalitarian society under constant surveillance.',
  ),
  const Book(
    id: '2',
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    genre: 'Classic',
    subject: 'Racism',
    description:
        'Story of a young girl growing up in the racially charged South of the 1930s.',
  ),
  const Book(
    id: '3',
    title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    genre: 'Classic',
    subject: 'American Dream',
    description:
        'A critique of the American Dream set in the Roaring Twenties.',
  ),
  const Book(
    id: '4',
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    genre: 'Romance',
    subject: 'Society',
    description:
        'A romantic novel exploring issues of manners, upbringing and marriage.',
  ),
  const Book(
    id: '5',
    title: 'Moby Dick',
    author: 'Herman Melville',
    genre: 'Adventure',
    subject: 'Seafaring',
    description: 'An epic sea adventure and a study of obsession.',
  ),
  const Book(
    id: '6',
    title: 'Harry Potter and the Sorcerer\'s Stone',
    author: 'J.K. Rowling',
    genre: 'Fantasy',
    subject: 'Magic',
    description:
        'The first book in the Harry Potter series introducing Hogwarts and the wizarding world.',
  ),
  const Book(
    id: '7',
    title: 'The Hobbit',
    author: 'J.R.R. Tolkien',
    genre: 'Fantasy',
    subject: 'Adventure',
    description:
        'Bilbo Baggins embarks on a thrilling quest to reclaim a treasure guarded by a dragon.',
  ),
  const Book(
    id: '8',
    title: 'A Brief History of Time',
    author: 'Stephen Hawking',
    genre: 'Science',
    subject: 'Cosmology',
    description:
        'An accessible overview of cosmology, black holes and the origin of the universe.',
  ),
  const Book(
    id: '9',
    title: 'The Catcher in the Rye',
    author: 'J.D. Salinger',
    genre: 'Coming-of-Age',
    subject: 'Identity',
    description:
        'The experiences of Holden Caulfield, a teenager confronting adolescence.',
  ),
  const Book(
    id: '10',
    title: 'The Alchemist',
    author: 'Paulo Coelho',
    genre: 'Adventure',
    subject: 'Self-discovery',
    description:
        'A young shepherd travels in search of a worldly treasure and learns to follow his heart.',
  ),
];