class MyModel {

  int id;
  String title;
  String body;

  MyModel({ id, title, completed });

  MyModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.title = json['title'];
      this.body = json['body'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['cody'] = this.body;
    return data;
  }
}