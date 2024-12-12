import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/routers/go_router.dart';
import 'package:task/features/auth/presentation/view_model/authentication_cubit/authentication_cubit.dart';
import 'package:task/firebase_options.dart';

import 'features/auth/data/repos/auth_repo.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AuthCubit(AuthRepository()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'task',
        routerConfig: goRouter(),

      ),
    );
  }
}
