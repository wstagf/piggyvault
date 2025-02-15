import 'package:equatable/equatable.dart';

abstract class TransactionDetailState extends Equatable {
  const TransactionDetailState();
}

class InitialTransactionDetailState extends TransactionDetailState {
  @override
  List<Object> get props => [];
}

class TransactionDeleting extends TransactionDetailState {
  @override
  List<Object> get props => [];
}

class TransactionDeleted extends TransactionDetailState {
  @override
  List<Object> get props => [];
}

class TransactionDetailError extends TransactionDetailState {
  final String errorMessage;

  TransactionDetailError({required this.errorMessage});

  @override
  String toString() => 'TransactionDetailError { error: $errorMessage }';

  @override
  List<Object> get props => [errorMessage];
}
