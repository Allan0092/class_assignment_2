import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/view/area_of_circle_view.dart';
import 'package:class_assignment_2/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(this._areaOfCircleCubit, this._simpleInterestCubit)
      : super(null);

  final AreaOfCircleCubit _areaOfCircleCubit;
  final SimpleInterestCubit _simpleInterestCubit;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _areaOfCircleCubit,
                child: AreaOfCircleView(),
              )),
    );
  }

  void openSimpleInterest(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _simpleInterestCubit,
                  child: SimpleInterestView(),
                )));
  }

  void openSomething(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaOfCircleCubit,
          child: AreaOfCircleView(),
        ),
      ),
    );
  }
}
