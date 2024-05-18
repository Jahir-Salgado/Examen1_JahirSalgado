class Book {
  final String title;
  final String author;

  Book(this.title, this.author);

  // Método para crear un Book desde un JSON
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      json['title'] as String,
      json['author'] as String,
    );
  }

  // Método para convertir un Book a JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
    };
  }
}