import 'package:equatable/equatable.dart';
import 'package:piggy_flutter/models/models.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();
}

class SaveTransaction extends TransactionEvent {
  final TransactionEditDto transactionEditDto;

  const SaveTransaction({required this.transactionEditDto});

  @override
  List<Object> get props => [transactionEditDto];
}

class DoTransfer extends TransactionEvent {
  final TransferInput transferInput;

  const DoTransfer({required this.transferInput});

  @override
  List<Object> get props => [transferInput];
}
