import 'package:flutter/material.dart';
import 'package:toktik/domain/entitites/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({
    super.key, 
    required this.videos,
  });
  final List<VideoPost> videos;
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.yellow,
        ),
      ],
    );
  }
}