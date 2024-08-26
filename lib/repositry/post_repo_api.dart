import 'package:dio/dio.dart';
import 'package:mvvm/repositry/post_repostry.dart';

import '../model/post_moodel.dart';

class PostRepositryApi extends PostRepositry{

  @override
  Future<List<PostModel>> getAllPost() async{
    List<PostModel> dataList=[];
    try {
      var  response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
      List responseData= response.data;
      dataList=responseData.map((post) => PostModel.fromJson(post)).toList();
    } catch (e) {
      print(e);
    }
    // print("dataList $dataList");
    return dataList;
  }


  @override
  getPostById() {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}