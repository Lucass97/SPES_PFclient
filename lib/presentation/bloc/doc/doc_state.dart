import 'dart:typed_data';
import 'package:equatable/equatable.dart';

import 'package:SPES_PFclient/services/model/doc_info.dart';

class DocsState extends Equatable {
  const DocsState();

  @override
  List<Object?> get props => [];
}

class FetchReportsInfoState extends DocsState {}

class FetchingDocsInfoState extends DocsState {}

class FailFetchedDocsState extends DocsState {
  const FailFetchedDocsState(this.statusCode);

  final int? statusCode;

  @override
  List<Object?> get props => [statusCode];
}

class SuccessFetchedDocsInfoState extends DocsState {
  const SuccessFetchedDocsInfoState({required this.id2doc});

  final Map<String, DocInfo> id2doc;

  @override
  List<Object?> get props => [id2doc];
}

class NotFoundFetchedDocsState extends DocsState {}

class DocPDFState extends DocsState {}

class SuccessFetchedDocPDFState extends DocsState {
  const SuccessFetchedDocPDFState(this.tipologia, this.bytes);

  final String tipologia;
  final Uint8List bytes;

  @override
  List<Object?> get props => [tipologia, bytes];
}
