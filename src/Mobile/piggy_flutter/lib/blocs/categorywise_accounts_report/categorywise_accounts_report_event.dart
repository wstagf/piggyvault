import 'package:equatable/equatable.dart';
import 'package:piggy_flutter/models/models.dart';

abstract class CategorywiseAccountsReportEvent extends Equatable {
  const CategorywiseAccountsReportEvent();
}

class CategorywiseAccountsReportLoad extends CategorywiseAccountsReportEvent {
  const CategorywiseAccountsReportLoad({required this.input});

  final GetCategoryReportInput input;

  @override
  List<Object> get props => [input];
}
