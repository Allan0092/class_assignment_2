import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleView extends StatelessWidget {
  const AreaOfCircleView({super.key});

  @override
  Widget build(BuildContext context) {
    final userInput = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: Text("Allan's Area of Circle")),
        body: Form(
          child: Column(
            children: [
              Text("Enter the radius of the circle"),
              TextFormField(
                controller: userInput,
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<AreaOfCircleCubit>()
                        .calculate(int.parse(userInput.text));
                  },
                  child: Text("Calculate")),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Area: "),
                  BlocBuilder<AreaOfCircleCubit, double>(
                      builder: (context, state) {
                    return Text("$state");
                  }),
                ],
              )
            ],
          ),
        ));
  }
}
