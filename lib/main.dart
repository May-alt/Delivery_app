import 'package:Delevery_app/modules/on_bording/onbording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Delevery_app/bloc/app_cubit.dart';
import 'package:Delevery_app/modules/lyouts_main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit(),),
        ],
        child: BlocConsumer<AppCubit,AppState>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(

                title: 'Delevery-f-app',
                theme: ThemeData(
                  scaffoldBackgroundColor: Colors.white,
                  primarySwatch: Colors.orange,
                ),
                //home: LyoutsMain()
                home: OnBordingViews(),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
    );
  }
}


