class MyModel {

  int id;
  String title;
  bool completed;

  MyModel({ id, title, completed });

  MyModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.title = json['title'];
      this.completed = json['completed'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
}