import 'package:flutter/material.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/screens/reports/widgets/report.dart';

class ReportList extends StatefulWidget {
  const ReportList(
      {super.key,
      required this.matchQuery,
      required this.id2report,
      required this.onRefresh});

  final List<String> matchQuery;
  final Map<String, ReportInfo> id2report;
  final VoidCallback onRefresh;

  @override
  _ReportListState createState() => _ReportListState();
}

class _ReportListState extends State<ReportList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.matchQuery.length,
            itemBuilder: (context, index) {
              var result = widget.matchQuery[index];
              return ReportBox(
                id: widget.id2report[result]!.reportId,
                title: widget.id2report[result]!.title,
                uploadDate: widget.id2report[result]!.uploadDate,
                onRefresh: widget.onRefresh,
              );
            },
          ),
          const SizedBox(
            height: 80,
          ),
        ]));
  }
}
