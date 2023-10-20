import 'package:toktik/domain/entitites/video_post.dart';

class LocalvideoModel {
  String name;
  String videoUrl;
  int likes;
  int views;

  LocalvideoModel({
      required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0,
  });

  factory LocalvideoModel.fromJson(Map<String, dynamic> json) => LocalvideoModel(
      name: json["name"],
      videoUrl: json["videoUrl"],
      likes: json["likes"] ?? 0,
      views: json["views"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
      "name": name,
      "videoUrl": videoUrl,
      "likes": likes,
      "views": views,
  };

  VideoPost toVideoPostEntity() {
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}