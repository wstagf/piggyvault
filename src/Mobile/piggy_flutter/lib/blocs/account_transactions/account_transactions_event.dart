import 'package:equatable/equatable.dart';
import 'package:piggy_flutter/models/models.dart';

abstract class AccountTransactionsEvent extends Equatable {
  const AccountTransactionsEvent();
  @override
  List<Object> get props => [];
}

class FetchAccountTransactions extends AccountTransactionsEvent {
  final GetTransactionsInput input;

  FetchAccountTransactions({required this.input});

  @override
  List<Object> get props => [input];
}

class FilterAccountTransactions extends AccountTransactionsEvent {
  final String query;

  FilterAccountTransactions(this.query);
}
