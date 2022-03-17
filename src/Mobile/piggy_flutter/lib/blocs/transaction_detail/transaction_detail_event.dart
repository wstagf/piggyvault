import 'package:equatable/equatable.dart';

abstract class TransactionDetailEvent extends Equatable {
  const TransactionDetailEvent();
}

class DeleteTransaction extends TransactionDetailEvent {
  final String transactionId;

  DeleteTransaction({required this.transactionId});

  @override
  List<Object> get props => [transactionId];
}
