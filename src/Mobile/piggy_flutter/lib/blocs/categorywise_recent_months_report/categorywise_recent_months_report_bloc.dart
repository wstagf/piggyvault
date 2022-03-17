import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:piggy_flutter/models/category_wise_recent_months_report_item.dart';
import 'package:piggy_flutter/repositories/report_repository.dart';
import './bloc.dart';

class CategorywiseRecentMonthsReportBloc extends Bloc<
    CategorywiseRecentMonthsReportEvent, CategorywiseRecentMonthsReportState> {
  CategorywiseRecentMonthsReportBloc({required this.reportRepository})
      : super(CategorywiseRecentMonthsReportLoading());

  final ReportRepository reportRepository;

  Stream<CategorywiseRecentMonthsReportState> mapEventToState(
    CategorywiseRecentMonthsReportEvent event,
  ) async* {
    if (event is CategorywiseRecentMonthsReportLoad) {
      yield CategorywiseRecentMonthsReportLoading();
      try {
        final List<CategoryWiseRecentMonthsReportItem> result =
            await reportRepository.getCategoryWiseTransactionSummaryHistory();
        yield CategorywiseRecentMonthsReportLoaded(result: result);
      } catch (error) {
        yield CategorywiseRecentMonthsReportError();
      }
    }
  }
}
