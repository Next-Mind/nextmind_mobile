class UserModel {
  final int id;
  final String uid;
  final String name;
  final String nickname;
  final String email;
  final String phone;
  final String profileImage;

  UserModel({
    required this.id,
    required this.uid,
    required this.name,
    required this.nickname,
    required this.email,
    required this.phone,
    required this.profileImage,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      uid: json['uid'],
      name: json['name'],
      nickname: json['nickname'] ?? '',
      email: json['email'],
      phone: json['phone'] ?? '',
      profileImage: json['profile_image'],
    );
  }
}
