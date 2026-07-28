class UserModel {
  const UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.token,
    this.profileImage,
  });

  final String id;
  final String fullName;
  final String email;
  final String token;
  final String? profileImage;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      token: json['token'] as String? ?? '',
      profileImage: json['profileImage'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'email': email,
      'token': token,
      'profileImage': profileImage,
    };
  }
}