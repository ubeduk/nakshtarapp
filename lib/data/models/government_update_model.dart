class GovernmentUpdateModel {
  final String id;
  final String title;
  final String department;
  final String date;
  final String description;

  GovernmentUpdateModel({
    required this.id,
    required this.title,
    required this.department,
    required this.date,
    required this.description,
  });

  factory GovernmentUpdateModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return GovernmentUpdateModel(
      id: json['id'],
      title: json['title'],
      department: json['department'],
      date: json['date'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "department": department,
      "date": date,
      "description": description,
    };
  }
}