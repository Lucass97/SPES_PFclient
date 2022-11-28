import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/presentation/bloc/doc/doc_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_state.dart';
import 'package:SPES_PFclient/presentation/screens/documents/widgets/doc_list.dart';

class DocsSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<DocsBloc, DocsState>(
        builder: (BuildContext context, DocsState state) {
      if (state is SuccessFetchedDocsInfoState) {
        List<String> matchQuery = [];
        for (var doc in state.id2doc.values) {
          if (doc.tipologia.toLowerCase().contains(query.toLowerCase())) {
            matchQuery.add(doc.id);
          }
        }
        return DocList(
          matchQuery: matchQuery,
          id2doc: state.id2doc,
          onRefresh: () {},
        );
      } else {
        return const SizedBox();
      }
    });
  }
}
