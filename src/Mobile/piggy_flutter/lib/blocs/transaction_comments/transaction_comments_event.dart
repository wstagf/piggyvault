import 'package:equatable/equatable.dart';

abstract class TransactionCommentsEvent extends Equatable {
  const TransactionCommentsEvent();
}

class PostTransactionComment extends TransactionCommentsEvent {
  final String transactionId;
  final String comment;

  PostTransactionComment({required this.comment, required this.transactionId});

  @override
  List<Object> get props => [transactionId, comment];
}

class LoadTransactionComments extends TransactionCommentsEvent {
  final String transactionId;

  LoadTransactionComments({required this.transactionId});

  @override
  List<Object> get props => [transactionId];
}
