import 'dart:typed_data';
import 'package:dio/dio.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_event.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DocsBloc extends Bloc<DocsEvent, DocsState> {
  DocsBloc({
    required Openapi api,
  })  : _api = api,
        super(const DocsState()) {
    _walletApi = api.getWalletApi();
    _tokenLogic = api.getTokenLogic();
    on<FetchDocsInfoEvent>(_onFetchDocsInfo);
    on<FetchDocPDFEvent>(_onFetchDocPDF);
  }

  final Openapi _api;
  var _walletApi;
  var _tokenLogic;

  Future<void> _onFetchDocsInfo(
    FetchDocsInfoEvent event,
    Emitter<DocsState> emit,
  ) async {
    try {
      var idPf = await _tokenLogic.getPfId() ?? '';
      print(idPf);
      var result = await _walletApi
          .getIdentificationDocumentsWalletPfIdPfDocsGet(idPf: idPf);
      List<DocInfo> docs = result.data.toList();

      Map<String, DocInfo> id2docs = {};

      for (var doc in docs) {
        id2docs[doc.id] = doc;
      }

      emit(SuccessFetchedDocsInfoState(id2doc: id2docs));
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        emit(NotFoundFetchedDocsState());
      } else {
        emit(FailFetchedDocsState(e.response?.statusCode));
      }
    } catch (e) {
      print(e);
      emit(const FailFetchedDocsState(null));
    }
  }

  Future<void> _onFetchDocPDF(
    FetchDocPDFEvent event,
    Emitter<DocsState> emit,
  ) async {
    try {
      var docId = event.docId;
      var idPf = await _tokenLogic.getPfId();
      var result = await _walletApi
          .getIdentificationDocumentByIdWalletPfIdPfDocsDocIdGet(
              idPf: idPf, docId: docId);
      Uint8List bytes = Uint8List.fromList(result.data);
      emit(SuccessFetchedDocPDFState(event.tipologia, bytes));
    } catch (e) {
      print(e);
    }
  }
}
