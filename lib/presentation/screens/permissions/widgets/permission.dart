import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/iconic_icons.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_bloc.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_event.dart';
import 'package:SPES_PFclient/presentation/bloc/permission/permission_state.dart';

class PermissionBox extends StatefulWidget {
  final String userId;
  final String reportId;
  final Date created;
  final bool permission;

  const PermissionBox(
      {Key? key,
      required this.userId,
      required this.reportId,
      required this.created,
      required this.permission})
      : super(key: key);

  @override
  State<PermissionBox> createState() => _PermissionBoxState();
}

class _PermissionBoxState extends State<PermissionBox> {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: BlocProvider.of<PermissionsBloc>(context),
        listener: (BuildContext context, PermissionsState state) async {
          if (state is SuccessAppliedPermissionState) {
            setState(() {});
            context.read<PermissionsBloc>().add(FetchPermissionsEvent());
          }
        },
        child: BlocBuilder<PermissionsBloc, PermissionsState>(
            builder: (BuildContext context, PermissionsState state) {
          return InkWell(
              onTap: () {},
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
                        child: Icon(Icons.add_moderator, size: 25),
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
                          Text(widget.reportId,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300))
                        ],
                      )),
                      //const Spacer(),
                      Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: IconButton(
                            iconSize: 30,
                            icon: const Icon(Iconic.block, color: Colors.red),
                            onPressed: () {
                              context.read<PermissionsBloc>().add(
                                  ApplyPermissionsEvent(
                                      widget.userId, widget.reportId, false));
                            },
                          )),
                      IconButton(
                        iconSize: 30,
                        icon: const Icon(Iconic.ok, color: Colors.green),
                        onPressed: () {
                          context.read<PermissionsBloc>().add(
                              ApplyPermissionsEvent(
                                  widget.userId, widget.reportId, true));
                        },
                      ),
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
                            Text(widget.created.toString(),
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300))
                          ]),
                    ],
                  )
                ]),
              ));
        }));
  }
}
