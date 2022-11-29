import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:SPES_PFclient/presentation/bloc/permission/permission_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_event.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_state.dart';
import 'package:SPES_PFclient/presentation/screens/permissions/widgets/permission_list.dart';
import 'package:SPES_PFclient/presentation/screens/login/login_screen.dart';
import 'package:SPES_PFclient/presentation/widgets/text.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key, required this.title});

  static String routeName = "/permissions";

  final String title;

  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  late final bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<PermissionsBloc>(context);
    context.read<PermissionsBloc>().add(FetchPermissionsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Center(
                  child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              )),
            ),
            body: MultiBlocListener(
                listeners: [
                  BlocListener(
                    bloc: BlocProvider.of<PermissionsBloc>(context),
                    listener: (BuildContext context, PermissionsState state) {
                      if (state is SuccessAppliedPermissionState) {
                        setState(() {});
                        context
                            .read<PermissionsBloc>()
                            .add(FetchPermissionsEvent());
                      }
                    },
                  )
                ],
                child: BlocBuilder<PermissionsBloc, PermissionsState>(
                    builder: (BuildContext context, PermissionsState state) {
                  if (state is FetchingPermissionsInfoState) {
                    const CircularProgressIndicator();
                  }
                  if (state is SuccessFetchedPermissionState) {
                    return PermissionList(
                      permissionList: state.permissionList,
                    );
                  }
                  if (state is NotFoundFetchedPermissionsState) {
                    return const CenterGreyText(text: 'Nessuna Richiesta!');
                  }
                  if (state is FailFetchedPermissionsState) {
                    return CenterGreyText(
                        text:
                            'Ops! Qualcosa è andato storto!\nCodice ${state.statusCode}');
                  }
                  return const SizedBox();
                }))));
  }
}
