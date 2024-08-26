import 'package:dio/dio.dart';
import 'package:mvvm/model/post_moodel.dart';
import 'package:mvvm/repositry/post_repostry.dart';
import 'package:mvvm/view_model/post_view_model.dart';

class PostScreenViewModel {
  final title = "PostScreen";
  PostRepositry? postRepositry;

  PostScreenViewModel({this.postRepositry});

  Future<List<PostViewModel>> fetchPost() async {
    List<PostModel> data = await postRepositry!.getAllPost();
    return data.map((e) => PostViewModel(postModel: e)).toList();
  }
}
