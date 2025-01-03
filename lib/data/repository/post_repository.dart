import 'package:test_project/core/constants/url_constants.dart';
import 'package:test_project/data/model/post_modle.dart';
import 'package:dio/dio.dart';

class PostRepository {
  final dio = Dio();

  Future<List<PostModel>> fetchPosts() async {
    try {
      final response = await dio.get(baseUrl + fetchPostsUrl);
      print('-----------------prints--------------');
      print(response.statusCode);
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((json) => PostModel.fromMap(json))
            .toList()
            .cast<PostModel>();
      }
    } catch (e) {
      throw 'Failed to fetch posts.';
    }
    return [];
  }
}
