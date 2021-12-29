import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

abstract class MyEvent {}

class Increment extends MyEvent {}

class MyBloc extends Bloc<MyEvent, int> {
  MyBloc() : super(0) {
    on<Increment>(
      (_, emit) => emit(state + 1),
      transformer: (events, _) => events.debounceTime(
        const Duration(milliseconds: 300),
      ),
    );
  }
}
