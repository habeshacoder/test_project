import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/config/routing.dart';
import 'package:test_project/config/theme.dart';
import 'package:test_project/data/bloc/login/login_bloc.dart';
import 'package:test_project/data/bloc/post/post_bloc.dart';
import 'package:test_project/data/repository/post_repository.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(
            create: (context) => PostBloc(postRepository: PostRepository())),
      ],
      child: MaterialApp.router(
        theme: lightTheme(),
        routerConfig: MyAppRouter.instance.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
