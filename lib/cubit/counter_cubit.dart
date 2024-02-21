import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamA = 0;
  int teamB = 0;

  teamIncrement({required String team, required int num}) {
    if (team == "A") {
      teamA += num;
      emit(CounterTeamA());
    } else {
      teamB += num;
      emit(CounterTeamB());
    }
  }
}
