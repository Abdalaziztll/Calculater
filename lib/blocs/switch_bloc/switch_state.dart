part of 'switch_bloc.dart';

class SwitchState extends Equatable {
  final bool switchValue;

  const SwitchState({required this.switchValue});

  @override
  List<Object> get props => [switchValue];
}

class SwitchInitial extends SwitchState {
  const SwitchInitial({required super.switchValue});
}

// add new state for my bussines logic

class WipedHistory extends SwitchState {
  WipedHistory({required super.switchValue});
}
