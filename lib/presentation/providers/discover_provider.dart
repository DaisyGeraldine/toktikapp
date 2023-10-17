import 'package:flutter/material.dart';
import 'package:toktik/domain/entitites/video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  bool initialLoading = true;
  List<VideoPost> videoPosts = [];

  Future<void> loadNextPage() async {
    notifyListeners();
    //hola
  }

}