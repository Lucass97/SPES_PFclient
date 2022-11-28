//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:SPES_PFclient/services/date_serializer.dart';
import 'package:SPES_PFclient/services/model/date.dart';

import 'package:SPES_PFclient/services/model/address.dart';
import 'package:SPES_PFclient/services/model/address_type_id_enum.dart';
import 'package:SPES_PFclient/services/model/citizenship.dart';
import 'package:SPES_PFclient/services/model/doc_info.dart';
import 'package:SPES_PFclient/services/model/doc_partial_info.dart';
import 'package:SPES_PFclient/services/model/gender_enum.dart';
import 'package:SPES_PFclient/services/model/http_validation_error.dart';
import 'package:SPES_PFclient/services/model/login.dart';
import 'package:SPES_PFclient/services/model/login_response.dart';
import 'package:SPES_PFclient/services/model/marital_status.dart';
import 'package:SPES_PFclient/services/model/marital_status_enum.dart';
import 'package:SPES_PFclient/services/model/pf_partial_info_with_ids.dart';
import 'package:SPES_PFclient/services/model/permission_partial_info.dart';
import 'package:SPES_PFclient/services/model/permission_to_modify.dart';
import 'package:SPES_PFclient/services/model/pf_id.dart';
import 'package:SPES_PFclient/services/model/pf_info.dart';
import 'package:SPES_PFclient/services/model/pf_info_with_ids.dart';
import 'package:SPES_PFclient/services/model/pf_info_with_ids_for_update.dart';
import 'package:SPES_PFclient/services/model/report_info.dart';
import 'package:SPES_PFclient/services/model/report_only_id.dart';
import 'package:SPES_PFclient/services/model/user_info_for_update.dart';
import 'package:SPES_PFclient/services/model/user_info_with_pwd.dart';
import 'package:SPES_PFclient/services/model/validation_error.dart';

part 'serializers.g.dart';

@SerializersFor([
  Address,
  AddressTypeIdEnum,
  Citizenship,
  DocInfo,
  DocPartialInfo,
  GenderEnum,
  HTTPValidationError,
  Login,
  LoginResponse,
  MaritalStatus,
  MaritalStatusEnum,
  PFPartialInfoWithIds,
  PermissionPartialInfo,
  PermissionToModify,
  PfId,
  PfInfo,
  PfInfoWithIds,
  PfInfoWithIdsForUpdate,
  ReportInfo,
  ReportOnlyId,
  UserInfoForUpdate,
  UserInfoWithPwd,
  ValidationError,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Address)]),
        () => ListBuilder<Address>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReportOnlyId)]),
        () => ListBuilder<ReportOnlyId>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PermissionToModify)]),
        () => ListBuilder<PermissionToModify>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReportInfo)]),
        () => ListBuilder<ReportInfo>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PFPartialInfoWithIds)]),
        () => ListBuilder<PFPartialInfoWithIds>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Citizenship)]),
        () => ListBuilder<Citizenship>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MaritalStatus)]),
        () => ListBuilder<MaritalStatus>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DocInfo)]),
        () => ListBuilder<DocInfo>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PermissionPartialInfo)]),
        () => ListBuilder<PermissionPartialInfo>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
