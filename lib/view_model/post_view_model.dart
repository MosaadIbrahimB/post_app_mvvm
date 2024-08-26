import '../model/post_moodel.dart';

class PostViewModel {
  PostModel? postModel;

  PostViewModel({this.postModel});

  get id => postModel?.id;

  get title => postModel?.title;

  get body => postModel?.body;

  get userId => postModel?.userId;
}
