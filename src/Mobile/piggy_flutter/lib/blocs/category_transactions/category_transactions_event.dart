import 'package:equatable/equatable.dart';
import 'package:piggy_flutter/models/models.dart';

abstract class CategoryTransactionsEvent extends Equatable {
  const CategoryTransactionsEvent();
  @override
  List<Object> get props => [];
}

class FetchCategoryTransactions extends CategoryTransactionsEvent {
  final GetTransactionsInput input;

  FetchCategoryTransactions({required this.input});

  @override
  List<Object> get props => [input];
}

class FilterCategoryTransactions extends CategoryTransactionsEvent {
  final String query;

  FilterCategoryTransactions(this.query);
}
