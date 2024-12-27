import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_2/cubit/dashboard_cubit.dart';
import 'package:class_assignment_2/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AreaOfCircleCubit(),
        ),
        BlocProvider(
            create: (context) =>
                DashboardCubit(context.read<AreaOfCircleCubit>()))
      ],
      child: MaterialApp(
        title: "Class Assignment 2",
        debugShowCheckedModeBanner: false,
        home: DashboardView(),
      ),
    );
  }
}
