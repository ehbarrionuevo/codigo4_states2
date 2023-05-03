import 'package:codigo4_states2/bloc/drop_event.dart';
import 'package:codigo4_states2/bloc/drop_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropBloc extends Bloc<DropEvent, DropState> {
  List<String> people = [
    "Juan",
    "Daniel",
    "Ramón",
  ];

  DropBloc() : super(DropStateInit(data: [], value: "")) {
    on<DropInitEvent>(
      (event, emit) {
        emit(
          DropStateInit(data: people, value: people.first),
        );
      },
    );

    on<DropSelect1Event>(
      (event, emit) {
        emit(DropState1(data: people, value: event.value));
      },
    );
  }
}
