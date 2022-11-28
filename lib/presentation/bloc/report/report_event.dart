import 'package:equatable/equatable.dart';

class ReportsEvent extends Equatable {
  const ReportsEvent();

  @override
  List<Object?> get props => [];
}

class FetchingReportsInfoEvent extends ReportsEvent {}

class FetchReportsInfoEvent extends ReportsEvent {}

class FetchedReportsInfoEvent extends ReportsEvent {}

class FetchReportPDFEvent extends ReportsEvent {
  const FetchReportPDFEvent(this.reportId, this.title);

  final String reportId;
  final String title;

  @override
  List<Object?> get props => [reportId, title];
}
