import 'package:flutter/material.dart';
import 'package:toktik/domain/entitites/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';
class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videosRepositoy;

  DiscoverProvider({required this.videosRepositoy});

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // await Future.delayed(Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts.map(
    //   (video) => LocalvideoModel.fromJson(video).toVideoPostEntity()
    // ).toList();

    final newVideos = await videosRepositoy.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }

}