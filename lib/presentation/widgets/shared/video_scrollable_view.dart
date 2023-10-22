import 'package:flutter/material.dart';
import 'package:toktik/domain/entitites/video_post.dart';
import 'package:toktik/presentation/widgets/video/fiull_screen_player.dart';
import 'package:toktik/presentation/widgets/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({
    super.key, 
    required this.videos,
  });
  final List<VideoPost> videos;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                videoUrl: videoPost.videoUrl,
                caption: videoPost.caption,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(
                video: videoPost,
              ),
            ),
          ],
        );
      },
    );
  }
}