import 'package:equatable/equatable.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class LoadUserSettings extends SettingsEvent {}

class ChangeDefaultCurrency extends SettingsEvent {
  final String currencyCode;

  ChangeDefaultCurrency({required this.currencyCode});

  @override
  List<Object> get props => [currencyCode];
}
