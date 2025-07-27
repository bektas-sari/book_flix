import 'package:flutter/material.dart';
import '../models/book.dart';
import 'book_detail_page.dart';

/// Displays a list of books filtered by a specific criterion such as genre or
/// author. Tapping a book navigates to the detail page.
class BookListPage extends StatelessWidget {
  final String title;
  final List<Book> books;

  const BookListPage({Key? key, required this.title, required this.books})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: books.isEmpty
          ? const Center(
              child: Text(
                'Burada listelenecek kitap yok.',
                style: TextStyle(color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text('${book.author} · ${book.genre}'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => BookDetailPage(book: book),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}