class FundingModel {
  final String id;
  final String title;
  final String provider;
  final String amount;
  final String deadline;
  final String eligibility;
  final String description;

  FundingModel({
    required this.id,
    required this.title,
    required this.provider,
    required this.amount,
    required this.deadline,
    required this.eligibility,
    required this.description,
  });

  factory FundingModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return FundingModel(
      id: json['id'],
      title: json['title'],
      provider: json['provider'],
      amount: json['amount'],
      deadline: json['deadline'],
      eligibility: json['eligibility'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "provider": provider,
      "amount": amount,
      "deadline": deadline,
      "eligibility": eligibility,
      "description": description,
    };
  }
}