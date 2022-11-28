import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:SPES_PFclient/services/openapi.dart';

class ReportsState extends Equatable {
  const ReportsState();

  @override
  List<Object?> get props => [];
}

class FetchReportsInfoState extends ReportsState {}

class FetchingReportsInfoState extends ReportsState {}

class FailFetchedReportsInfoState extends ReportsState {
  const FailFetchedReportsInfoState(this.statusCode);

  final int? statusCode;

  @override
  List<Object?> get props => [statusCode];
}

class SuccessFetchedReportsInfoState extends ReportsState {
  const SuccessFetchedReportsInfoState(this.id2report);

  final Map<String, ReportInfo> id2report;

  @override
  List<Object?> get props => [id2report];
}

class NotFoundFetchedReportsState extends ReportsState {}

class ReportPDFState extends ReportsState {}

class SuccessReportPDFState extends ReportsState {
  const SuccessReportPDFState(this.title, this.bytes);

  final String title;
  final Uint8List bytes;

  @override
  List<Object?> get props => [bytes, title];
}
