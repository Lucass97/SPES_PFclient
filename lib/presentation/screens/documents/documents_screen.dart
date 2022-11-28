import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/presentation/bloc/doc/doc_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_event.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_state.dart';
import 'package:SPES_PFclient/presentation/screens/documents/widgets/doc_list.dart';
import 'package:SPES_PFclient/presentation/screens/login/login_screen.dart';
import 'package:SPES_PFclient/presentation/widgets/text.dart';
import 'package:SPES_PFclient/presentation/screens/pdf_viewer/pdf_viewer_screen.dart';
import 'package:SPES_PFclient/presentation/screens/documents/widgets/docs_search_delegate.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key, required this.title});

  static String routeName = "/docs";

  final String title;

  @override
  _DocumentScreenState createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  late final bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<DocsBloc>(context);
    context.read<DocsBloc>().add(FetchDocsInfoEvent());
  }

  void onRefresh() {
    context.read<DocsBloc>().add(FetchDocsInfoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: Center(
                      child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ))),
              leadingWidth: 30,
              leading: IconButton(
                  onPressed: () {
                    showSearch(
                        context: context, delegate: DocsSearchDelegate());
                  },
                  icon: const Icon(Icons.search_outlined,
                      size: 30, color: Colors.white)),
              elevation: 0,
            ),
            body: MultiBlocListener(
                listeners: [
                  BlocListener(
                      bloc: BlocProvider.of<DocsBloc>(context),
                      listener: (BuildContext context, DocsState state) async {
                        if (state is SuccessFetchedDocPDFState) {
                          bool refresh = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PdfViewerScreen(
                                      title: state.tipologia,
                                      bytes: state.bytes)));
                          if (refresh) {
                            onRefresh();
                          }
                        }
                      }),
                  BlocListener(
                    bloc: BlocProvider.of<DocsBloc>(context),
                    listener: (BuildContext context, DocsState state) {
                      if (state is FailFetchedDocsState) {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      }
                    },
                  )
                ],
                child: BlocBuilder<DocsBloc, DocsState>(
                    builder: (BuildContext context, DocsState state) {
                  if (state is FetchingDocsInfoState) {
                    const CircularProgressIndicator();
                  }
                  if (state is SuccessFetchedDocsInfoState) {
                    return DocList(
                      matchQuery: state.id2doc.keys.toList(),
                      id2doc: state.id2doc,
                      onRefresh: onRefresh,
                    );
                  }
                  if (state is NotFoundFetchedDocsState) {
                    return const CenterGreyText(text: 'Nessun Documento!');
                  }
                  if (state is FailFetchedDocsState) {
                    return CenterGreyText(
                        text:
                            'Ops! Qualcosa è andato storto!\nCodice ${state.statusCode}');
                  }
                  return const SizedBox();
                }))));
  }
}
