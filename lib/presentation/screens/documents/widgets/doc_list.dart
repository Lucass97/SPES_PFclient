import 'package:flutter/material.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/screens/documents/widgets/doc.dart';

class DocList extends StatefulWidget {
  const DocList(
      {super.key,
      required this.matchQuery,
      required this.id2doc,
      required this.onRefresh});

  final List<String> matchQuery;
  final Map<String, DocInfo> id2doc;
  final VoidCallback onRefresh;

  @override
  _DocListState createState() => _DocListState();
}

class _DocListState extends State<DocList> {
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
              return DocBox(
                  id: widget.id2doc[result]!.id,
                  tipologia: widget.id2doc[result]!.tipologia,
                  uploadDate: widget.id2doc[result]!.uploadDate,
                  onRefresh: widget.onRefresh);
            },
          ),
          const SizedBox(
            height: 80,
          ),
        ]));
  }
}
