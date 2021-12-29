import 'package:bloc_test/bloc_test.dart';
import 'package:debounce_test/my_bloc.dart';

void main() {
  blocTest<MyBloc, int>(
    'MyBloc emits [1] when [Increment, Increment] is added',
    build: () => MyBloc(),
    act: (bloc) {
      bloc.add(Increment());
      bloc.add(Increment());
    },
    wait: const Duration(milliseconds: 300),
    expect: () => [1],
  );
}
