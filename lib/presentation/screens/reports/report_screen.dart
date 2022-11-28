import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/presentation/bloc/report/report_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_event.dart';
import 'package:SPES_PFclient/presentation/bloc/report/report_state.dart';
import 'package:SPES_PFclient/presentation/screens/login/login_screen.dart';
import 'package:SPES_PFclient/presentation/screens/pdf_viewer/pdf_viewer_screen.dart';
import 'package:SPES_PFclient/presentation/screens/reports/widgets/reports_search_delegate.dart';
import 'package:SPES_PFclient/presentation/screens/reports/widgets/report_list.dart';
import 'package:SPES_PFclient/presentation/widgets/text.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key, required this.title});

  static String routeName = "/reports";

  final String title;

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  late final bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<ReportsBloc>(context);
    context.read<ReportsBloc>().add(FetchReportsInfoEvent());
  }

  void onRefresh() {
    context.read<ReportsBloc>().add(FetchReportsInfoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Padding(
                  padding: EdgeInsets.only(
                    right: 30,
                  ),
                  child: Center(
                      child: Text(
                    'Referti',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ))),
              leadingWidth: 30,
              leading: IconButton(
                  onPressed: () {
                    showSearch(
                        context: context, delegate: ReportsSearchDelegate());
                  },
                  icon: const Icon(Icons.search_outlined,
                      size: 30, color: Colors.white)),
              elevation: 0,
            ),
            body: MultiBlocListener(
                listeners: [
                  BlocListener(
                      bloc: BlocProvider.of<ReportsBloc>(context),
                      listener:
                          (BuildContext context, ReportsState state) async {
                        if (state is SuccessReportPDFState) {
                          bool refresh = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PdfViewerScreen(
                                      title: state.title, bytes: state.bytes)));
                          if (refresh) {
                            onRefresh();
                          }
                        }
                      }),
                  BlocListener(
                    bloc: BlocProvider.of<ReportsBloc>(context),
                    listener: (BuildContext context, ReportsState state) {
                      if (state is FailFetchedReportsInfoState) {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      }
                    },
                  )
                ],
                child: BlocBuilder<ReportsBloc, ReportsState>(
                    builder: (BuildContext context, ReportsState state) {
                  if (state is FetchingReportsInfoState) {
                    const CircularProgressIndicator();
                  }
                  if (state is SuccessFetchedReportsInfoState) {
                    return ReportList(
                      matchQuery: state.id2report.keys.toList(),
                      id2report: state.id2report,
                      onRefresh: onRefresh,
                    );
                  }
                  if (state is NotFoundFetchedReportsState) {
                    return const CenterGreyText(text: 'Nessuna Referto!');
                  }

                  if (state is FailFetchedReportsInfoState) {
                    return CenterGreyText(
                        text:
                            'Ops! Qualcosa è andato storto!\nCodice ${state.statusCode}');
                  }
                  return const SizedBox();
                }))));
  }
}
