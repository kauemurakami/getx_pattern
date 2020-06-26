class MyModel {
  
  int id;
  String title;
  String body;

  MyModel({ id, title, body});

  MyModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.title = json['title'];
      this.body = json['body'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.title;
    data['body'] = this.body;
    return data;
  }
}