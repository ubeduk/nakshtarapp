class CompetitionModel {
  final String id;
  final String title;
  final String organizer;
  final String prize;
  final String date;
  final String image;
  final String description;

  CompetitionModel({
    required this.id,
    required this.title,
    required this.organizer,
    required this.prize,
    required this.date,
    required this.image,
    required this.description,
  });

  factory CompetitionModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return CompetitionModel(
      id: json['id'],
      title: json['title'],
      organizer: json['organizer'],
      prize: json['prize'],
      date: json['date'],
      image: json['image'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "organizer": organizer,
      "prize": prize,
      "date": date,
      "image": image,
      "description": description,
    };
  }
}