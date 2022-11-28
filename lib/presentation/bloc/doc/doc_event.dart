import 'package:equatable/equatable.dart';

class DocsEvent extends Equatable {
  const DocsEvent();

  @override
  List<Object?> get props => [];
}

class FetchingDocsInfoEvent extends DocsEvent {}

class FetchDocsInfoEvent extends DocsEvent {}

class FetchedDocsInfoEvent extends DocsEvent {}

class FetchDocPDFEvent extends DocsEvent {
  const FetchDocPDFEvent(this.docId, this.tipologia);

  final String docId;
  final String tipologia;

  @override
  List<Object?> get props => [docId, tipologia];
}
