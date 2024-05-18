class Book {
  final String title;
  final String author;

  Book({required this.title, required 
  this.author});

  factory Book.fromJson(Map<String, dynamic> 
  json) {
    return Book(
      title: json['title'] as String,
      author: json['author'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
    };
  }
}