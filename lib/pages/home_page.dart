import 'package:flutter/material.dart';
import '../models/book.dart';
import '../data/mock_data.dart';
import 'book_detail_page.dart';
import 'book_list_page.dart';

/// The main screen of the application containing tabs for listing all books,
/// genres and authors. Includes a search bar for quick filtering in the "All"
/// tab.
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  /// Builds the "All Books" tab which includes a search bar and a list of
  /// filtered books.
  Widget _buildAllBooksTab(List<Book> books) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Kitap, yazar, tür veya konu ara...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: const Color(0xFF1F1F1F),
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
          ),
        ),
        Expanded(
          child: books.isEmpty
              ? const Center(
                  child: Text(
                  'Arama kriterlerine uygun kitap bulunamadı.',
                  style: TextStyle(color: Colors.grey),
                ))
              : ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return ListTile(
                      title: Text(book.title),
                      subtitle: Text('${book.author} · ${book.genre}'),
                      trailing: const Icon(Icons.chevron_right, size: 18),
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
        ),
      ],
    );
  }

  /// Builds a list view for either genres or authors. When a list item is
  /// tapped the user is navigated to a [BookListPage] showing all books that
  /// belong to that category.
  Widget _buildGroupTab(BuildContext context, List<String> items, String type) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(item),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            final filtered = mockBooks.where((book) {
              return type == 'Genre' ? book.genre == item : book.author == item;
            }).toList();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BookListPage(title: item, books: filtered),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Filter books based on search query (case insensitive)
    final List<Book> filteredBooks = mockBooks.where((book) {
      if (_searchQuery.isEmpty) return true;
      final query = _searchQuery.toLowerCase();
      return book.title.toLowerCase().contains(query) ||
          book.author.toLowerCase().contains(query) ||
          book.genre.toLowerCase().contains(query) ||
          book.subject.toLowerCase().contains(query) ||
          book.description.toLowerCase().contains(query);
    }).toList();

    // Unique sorted lists of genres and authors
    final List<String> genres =
        mockBooks.map((b) => b.genre).toSet().toList()..sort();
    final List<String> authors =
        mockBooks.map((b) => b.author).toSet().toList()..sort();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BookFlix'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tümü'),
              Tab(text: 'Türler'),
              Tab(text: 'Yazarlar'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAllBooksTab(filteredBooks),
            _buildGroupTab(context, genres, 'Genre'),
            _buildGroupTab(context, authors, 'Author'),
          ],
        ),
      ),
    );
  }
}