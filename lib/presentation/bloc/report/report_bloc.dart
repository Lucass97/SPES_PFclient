import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_event.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_state.dart';

class ReportsBloc extends Bloc<ReportsEvent, ReportsState> {
  ReportsBloc({
    required Openapi api,
  })  : _api = api,
        super(const ReportsState()) {
    _reportApi = api.getReportApi();
    on<FetchReportsInfoEvent>(_onFetchReportsInfo);
    on<FetchReportPDFEvent>(_onFetchReportPDF);
  }

  final Openapi _api;
  var _reportApi;

  Future<void> _onFetchReportsInfo(
    FetchReportsInfoEvent event,
    Emitter<ReportsState> emit,
  ) async {
    try {
      var result = await _reportApi.getAllMedicalReportsReportsGet();
      List<ReportInfo> reports = result.data.toList();

      Map<String, ReportInfo> id2report = {};

      for (var report in reports) {
        id2report[report.reportId] = report;
      }

      emit(SuccessFetchedReportsInfoState(id2report));
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        emit(NotFoundFetchedReportsState());
      } else {
        emit(FailFetchedReportsInfoState(e.response?.statusCode));
      }
    } catch (e) {
      emit(const FailFetchedReportsInfoState(null));
    }
  }

  Future<void> _onFetchReportPDF(
    FetchReportPDFEvent event,
    Emitter<ReportsState> emit,
  ) async {
    try {
      var reportId = event.reportId;
      var result = await _reportApi.getMedicalReportByIdReportsIdRefertoGet(
          idReferto: reportId);
      Uint8List bytes = Uint8List.fromList(result.data);
      emit(SuccessReportPDFState(event.title, bytes));
    } catch (e) {
      print(e);
    }
  }
}
