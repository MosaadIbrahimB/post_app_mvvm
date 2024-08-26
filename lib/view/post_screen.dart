import 'package:flutter/material.dart';
import 'package:mvvm/repositry/post_repostry.dart';
import 'package:mvvm/view_model/post_screen_view_model.dart';
import '../repositry/post_repo_api.dart';
import '../view_model/post_view_model.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});

  PostScreenViewModel dataModel =
      PostScreenViewModel(postRepositry: PostRepositryApi());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder<List<PostViewModel>>(
        future: dataModel.fetchPost(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                var item = data[index];
                return Card(
                  child: ListTile(
                    title: Text("Title${item.title}"),
                    subtitle: Text("${item.body}"),
                  ),
                );
              },
            );
          }
          return const Text("Error");
        },
      )),
    );
  }
}
