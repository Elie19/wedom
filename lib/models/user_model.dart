class UserModel {
  final String id;
  final String name;
  final String email;
  final String profilePictureUrl;
  final List<String> suggestions;
  final String walletAddress;
  final double totalToPay;
  final Map<String, double> tasksToDo;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePictureUrl,
    required this.suggestions,
    required this.walletAddress,
    required this.totalToPay,
    required this.tasksToDo,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      profilePictureUrl: json['profilePictureUrl'],
      suggestions: List<String>.from(json['suggestions']),
      walletAddress: json['walletAddress'],
      totalToPay: json['totalToPay'],
      tasksToDo: Map<String, double>.from(json['tasksToDo']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePictureUrl': profilePictureUrl,
      'suggestions': suggestions,
      'walletAddress': walletAddress,
      'totalToPay': totalToPay,
      'tasksToDo': tasksToDo,
    };
  }
}
