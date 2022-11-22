import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import '../../model/historyitem.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchInitial(switchValue: false)) {
    on<SwitchEvent>((event, emit) async {
      emit(
        const SwitchState(switchValue: true),
      );
    });
    on<SwitchOffEvent>((event, emit) async {
      emit(
        const SwitchState(switchValue: false),
      );
    });
    // wipe Data with controller
    // ! controlle Hive with bloc
    on<WipeEvent>((event, emit) => {
          emit(WipedHistory(switchValue: false)),
          Hive.box<HistoryItem>('history').clear()
        });
  }
}
