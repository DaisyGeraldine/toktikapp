import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entitites/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImp implements VideoPostRepository {

  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImp({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }

}