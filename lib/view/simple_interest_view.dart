import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestView extends StatelessWidget {
  const SimpleInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    final principleController = TextEditingController();
    final timeController = TextEditingController();
    final rateController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Allan's Simple Interest"),
      ),
      body: Form(
          child: Column(
        children: [
          Text("Enter the Priciple Amount"),
          TextFormField(
            controller: principleController,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Enter the time"),
          TextFormField(
            controller: timeController,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Enter the rate"),
          TextFormField(
            controller: rateController,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                context.read<SimpleInterestCubit>().calculate(
                    double.parse(principleController.text),
                    double.parse(timeController.text),
                    double.parse(rateController.text));
              },
              child: Text("Calculate")),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text("The simple Interest is"),
              BlocBuilder<SimpleInterestCubit, double>(
                builder: (context, state) {
                  return Text('$state');
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
