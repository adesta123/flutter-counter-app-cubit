import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

//kenapa int karena statenya sederhana yang berubah cuma counter saja
class CounterCubit extends Cubit<CounterState> {
  //inisial state diisi disini
  CounterCubit() : super(const CounterState(counterValue: 0));
  //state ini variabel yang ada disini sesuai dengan input di Cubit<state>
  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1),
    );
  void decrement() {
    if(state.counterValue > 0) {
      emit(CounterState(counterValue: state.counterValue - 1));
    }
  }
}
