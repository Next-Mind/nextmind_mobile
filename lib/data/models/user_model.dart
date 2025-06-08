  class UserModel {
  final int id;
  final String uid;
  final String name;
  String nickname;
  final String email;
  final String phone;
  final String profileImage;
  final bool isFriend;

  UserModel({
    required this.id,
    required this.uid,
    required this.name,
    required this.nickname,
    required this.email,
    required this.phone,
    required this.profileImage,
    required this.isFriend,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      uid: json['uid'],
      name: json['name'],
      nickname: json['nickname'] ?? '',
      email: json['email'],
      phone: json['phone'] ?? '',
      profileImage: 'https://avatar.iran.liara.run/public/${json['id']}', // Solução por hora, para as fotos ficarem aleatorias
      isFriend: true,
    );
  }
}
