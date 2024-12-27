import 'package:class_assignment_2/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Allan's Class Assignment 2"),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openAreaOfCircleView(context);
              },
              child: Column(
                children: [
                  Icon(Icons.calculate_rounded),
                  Text("Simple Interest")
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Icon(Icons.pie_chart_outline_outlined),
                  Text("Area of Circle")
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [Icon(Icons.access_alarm)],
              ),
            ),
          )
        ],
      ),
    );
  }
}
