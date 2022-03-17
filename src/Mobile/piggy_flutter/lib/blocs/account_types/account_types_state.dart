import 'package:equatable/equatable.dart';
import 'package:piggy_flutter/models/account_type_model.dart';

abstract class AccountTypesState extends Equatable {
  const AccountTypesState();
}

class AccountTypesLoading extends AccountTypesState {
  @override
  List<Object> get props => [];
}

class AccountTypesLoaded extends AccountTypesState {
  const AccountTypesLoaded({required this.accountTypes});

  final List<AccountType> accountTypes;

  @override
  List<Object> get props => [accountTypes];
}

class AccountTypesError extends AccountTypesState {
  @override
  List<Object> get props => [];
}
