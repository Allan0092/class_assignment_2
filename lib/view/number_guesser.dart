import 'package:class_assignment_2/cubit/number_guesser_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberGuesser extends StatelessWidget {
  const NumberGuesser({super.key});

  @override
  Widget build(BuildContext context) {
    final userInput = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Allan's app guesser"),
      ),
      body: Form(
          child: Column(
        children: [
          Text("Enter a number"),
          TextFormField(
            controller: userInput,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Submit")),
          SizedBox(height: 30),
          BlocBuilder<NumberGuesserCubit, String>(builder: (context, state) {
            return Text(state);
          })
        ],
      )),
    );
  }
}
