import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/screens/reports/widgets/report_list.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_state.dart';

class ReportsSearchDelegate extends SearchDelegate {
  Map<String, ReportInfo> reports = {};

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
    return BlocBuilder<ReportsBloc, ReportsState>(
        builder: (BuildContext context, ReportsState state) {
      if (state is SuccessFetchedReportsInfoState) {
        List<String> matchQuery = [];
        for (var report in state.id2report.values) {
          if (report.title.toLowerCase().contains(query.toLowerCase())) {
            matchQuery.add(report.reportId);
          }
        }
        return ReportList(
          matchQuery: matchQuery,
          id2report: state.id2report,
          onRefresh: () {},
        );
      } else {
        return const SizedBox();
      }
    });
  }
}
