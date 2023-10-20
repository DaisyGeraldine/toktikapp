import 'package:flutter/material.dart';
import 'package:toktik/domain/entitites/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';

class DiscoverProvider extends ChangeNotifier {

  //TODO: Repository , DataSource

  bool initialLoading = true;
  List<VideoPost> videoPosts = [];

  Future<void> loadNextPage() async {
    await Future.delayed(Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalvideoModel(
        name: video.caption,
        videoUrl: video.videoUrl,
        likes: video.likes,
        views: video.views,
      ).toVideoPostEntity(),
    ).toList();

    videoPosts.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }

}