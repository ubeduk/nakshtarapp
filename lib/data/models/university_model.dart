class UniversityModel {
  final String id;
  final String name;
  final String location;
  final String image;
  final String ranking;
  final String course;
  final String description;
  final String website;

  UniversityModel({
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.ranking,
    required this.course,
    required this.description,
    required this.website,
  });

  factory UniversityModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return UniversityModel(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      image: json['image'],
      ranking: json['ranking'],
      course: json['course'],
      description: json['description'],
      website: json['website'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "location": location,
      "image": image,
      "ranking": ranking,
      "course": course,
      "description": description,
      "website": website,
    };
  }
}