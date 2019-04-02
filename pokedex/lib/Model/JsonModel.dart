class JsonModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  JsonModel({this.title, this.body, this.id, this.userId});

  factory JsonModel.fromJson(Map<String, dynamic> json) {
    return JsonModel(
      userId: json['userId'],
      id: json['id'],
      body: json['body'],
      title: json['title']
    );
  }
}