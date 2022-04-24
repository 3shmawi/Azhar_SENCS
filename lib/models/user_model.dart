class UserModel {
  String? name;
  String? email;
  String? phone;
  String? university;

  UserModel({
    this.university,
    this.name,
    this.email,
    this.phone,
  });

  UserModel.fromJson(Map<String, dynamic>? json) {
    name = json!['name'];
    email = json['email'];
    phone = json['phone'];

    university = json['university'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['university'] = university;
    return data;
  }
}
