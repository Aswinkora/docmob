class doctormodel {
  doctormodel({this.name, this.email, this.phonenumber, this.qualification});
  String? name;
  String? qualification;
  String? phonenumber;
  String? email;

  factory doctormodel.fromjson(Map<String, dynamic> json) {
    return doctormodel(
      name: json['name'],
      email: json['email'],
      phonenumber: json['phone'],
      qualification: json['qualification'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> user = Map<String, dynamic>();
    user['user'] = name;
    user['mobile'] = phonenumber;
    user['email'] = email;
    user['qualification'] = qualification;
    return user;
  }
}
