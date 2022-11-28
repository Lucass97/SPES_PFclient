import 'package:flutter/material.dart';
import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_event.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportBox extends StatefulWidget {
  final String title;
  final String id;
  final Date uploadDate;
  final VoidCallback onRefresh;

  const ReportBox(
      {Key? key,
      required this.id,
      required this.title,
      required this.uploadDate,
      required this.onRefresh})
      : super(key: key);

  @override
  State<ReportBox> createState() => _ReportBoxState();
}

class _ReportBoxState extends State<ReportBox> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportsBloc, ReportsState>(
        builder: (BuildContext context, ReportsState state) {
      return InkWell(
          onTap: () {
            context
                .read<ReportsBloc>()
                .add(FetchReportPDFEvent(widget.id, widget.title));
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
                      child: Icon(Icons.file_copy, size: 25),
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
                        Text(widget.title,
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
