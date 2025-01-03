import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/data/model/post_modle.dart';
import 'package:test_project/data/repository/post_repository.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;

  PostBloc({required this.postRepository}) : super(PostInitial()) {
    on<FetchPosts>((event, emit) async {
      emit(PostLoading());
      try {
        final posts = await postRepository.fetchPosts();
        if (posts.isEmpty) {
          emit(PostError(error: 'No posts found.'));
        } else {
          emit(PostLoaded(posts: posts));
        }
      } catch (e) {
        emit(PostError(error: e.toString()));
      }
    });
  }
}
