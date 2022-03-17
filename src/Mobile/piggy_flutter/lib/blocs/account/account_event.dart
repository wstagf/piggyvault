import 'package:equatable/equatable.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();

  @override
  List<Object> get props => [];
}

class FetchAccount extends AccountEvent {
  final String accountId;

  FetchAccount({required this.accountId});

  @override
  List<Object> get props => [accountId];
}

class RefreshAccount extends AccountEvent {}
