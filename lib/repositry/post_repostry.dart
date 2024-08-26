import 'package:dio/dio.dart';
import 'package:mvvm/model/post_moodel.dart';

abstract class PostRepositry{
  Future<List<PostModel>> getAllPost();
  getPostById();
}

