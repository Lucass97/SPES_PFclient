import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_event.dart';
import 'package:SPES_PFclient/presentation/bloc/doc/doc_state.dart';

class DocBox extends StatefulWidget {
  final String tipologia;
  final String id;
  final Date uploadDate;
  final VoidCallback onRefresh;

  const DocBox(
      {Key? key,
      required this.id,
      required this.tipologia,
      required this.uploadDate,
      required this.onRefresh})
      : super(key: key);

  @override
  State<DocBox> createState() => _DocBoxState();
}

class _DocBoxState extends State<DocBox> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocsBloc, DocsState>(
        builder: (BuildContext context, DocsState state) {
      return InkWell(
          onTap: () {
            context
                .read<DocsBloc>()
                .add(FetchDocPDFEvent(widget.id, widget.tipologia));
          },
          child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
              child: Column(children: [
                //---------------------Header section--------------------
                Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    const CircleAvatar(
                      radius: 22,
                      child: Icon(Icons.wallet, size: 25),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(
                      left: 10,
                    )),
                    Expanded(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.tipologia,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300))
                      ],
                    )),
                  ],
                ),
                //-----------------------Footer section----------------------
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Spacer(),
                    const SizedBox(width: 6),
                    const SizedBox(
                      width: 25,
                      child: Icon(
                        Icons.date_range_outlined,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.uploadDate.toString(),
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300))
                        ]),
                  ],
                )
              ])));
    });
  }
}
