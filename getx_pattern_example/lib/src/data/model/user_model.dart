class UserModel {

  int id;
  String name;
  String email;
  String password;

  UserModel({ id, name, email, password });

  UserModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.name = json['name'];
      this.email = json['email'];
      this.password = json['password'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}