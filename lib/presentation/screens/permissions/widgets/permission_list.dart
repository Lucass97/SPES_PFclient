import 'package:flutter/material.dart';

import 'package:SPES_PFclient/services/openapi.dart';
import 'package:SPES_PFclient/presentation/screens/permissions/widgets/permission.dart';

class PermissionList extends StatelessWidget {
  const PermissionList({super.key, required this.permissionList});

  final List<PermissionPartialInfo> permissionList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: permissionList.length,
            itemBuilder: (context, index) {
              return PermissionBox(
                userId: permissionList[index]!.userId,
                reportId: permissionList[index]!.reportId,
                created: permissionList[index]!.created,
                permission: permissionList[index]!.permission,
              );
            },
          ),
          const SizedBox(
            height: 120,
          ),
        ]));
  }
}
