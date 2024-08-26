import 'dart:convert';

/// userId : 1
/// id : 1
/// title : "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
/// body : "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));
String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({
      this.userId, 
      this.id, 
      this.title, 
      this.body,});

  PostModel.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }

}