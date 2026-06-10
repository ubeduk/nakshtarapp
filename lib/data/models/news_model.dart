class NewsModel {
  final String id;
  final String title;
  final String image;
  final String author;
  final String date;
  final String content;
  final String category;

  NewsModel({
    required this.id,
    required this.title,
    required this.image,
    required this.author,
    required this.date,
    required this.content,
    required this.category,
  });

  factory NewsModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return NewsModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      author: json['author'],
      date: json['date'],
      content: json['content'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "image": image,
      "author": author,
      "date": date,
      "content": content,
      "category": category,
    };
  }
}