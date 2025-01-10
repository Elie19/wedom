class ServiceModel {
  final String name;
  final String description;
  final double rating;
  final String logoUrl;
  final int reliabilityScore;
  final int usageRate;

  ServiceModel({
    required this.name,
    required this.description,
    required this.rating,
    required this.logoUrl,
    required this.reliabilityScore,
    required this.usageRate,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      name: json['name'],
      description: json['description'],
      rating: json['rating'].toDouble(),
      logoUrl: json['logoUrl'],
      reliabilityScore: json['reliabilityScore'],
      usageRate: json['usageRate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'rating': rating,
      'logoUrl': logoUrl,
      'reliabilityScore': reliabilityScore,
      'usageRate': usageRate,
    };
  }
}
