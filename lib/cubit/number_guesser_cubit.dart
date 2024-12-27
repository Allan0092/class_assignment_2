import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class NumberGuesserCubit extends Cubit<String> {
  NumberGuesserCubit() : super("");
  final Random _random = Random();

  void resultCheck(String userInput) {
    String target = "${_random.nextInt(10)}";
    if (userInput == target) {
      emit("Congratulations! You guessed the right number.");
    } else {
      emit("wrong number: $target");
    }
  }
}
