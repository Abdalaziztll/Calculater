part of 'switch_bloc.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class SwitchOnEvent extends SwitchEvent {}

class SwitchOffEvent extends SwitchEvent {}

// we can add more than 2 event out of Switch button
// more controlle with more handling


class WipeEvent extends SwitchEvent {}
