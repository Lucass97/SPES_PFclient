// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportInfo extends ReportInfo {
  @override
  final String reportId;
  @override
  final String title;
  @override
  final Date uploadDate;
  @override
  final bool? permission;
  @override
  final bool? pending;

  factory _$ReportInfo([void Function(ReportInfoBuilder)? updates]) =>
      (new ReportInfoBuilder()..update(updates))._build();

  _$ReportInfo._(
      {required this.reportId,
      required this.title,
      required this.uploadDate,
      this.permission,
      this.pending})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(reportId, r'ReportInfo', 'reportId');
    BuiltValueNullFieldError.checkNotNull(title, r'ReportInfo', 'title');
    BuiltValueNullFieldError.checkNotNull(
        uploadDate, r'ReportInfo', 'uploadDate');
  }

  @override
  ReportInfo rebuild(void Function(ReportInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportInfoBuilder toBuilder() => new ReportInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportInfo &&
        reportId == other.reportId &&
        title == other.title &&
        uploadDate == other.uploadDate &&
        permission == other.permission &&
        pending == other.pending;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, reportId.hashCode), title.hashCode),
                uploadDate.hashCode),
            permission.hashCode),
        pending.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportInfo')
          ..add('reportId', reportId)
          ..add('title', title)
          ..add('uploadDate', uploadDate)
          ..add('permission', permission)
          ..add('pending', pending))
        .toString();
  }
}

class ReportInfoBuilder implements Builder<ReportInfo, ReportInfoBuilder> {
  _$ReportInfo? _$v;

  String? _reportId;

  String? get reportId => _$this._reportId;

  set reportId(String? reportId) => _$this._reportId = reportId;

  String? _title;

  String? get title => _$this._title;

  set title(String? title) => _$this._title = title;

  Date? _uploadDate;

  Date? get uploadDate => _$this._uploadDate;

  set uploadDate(Date? uploadDate) => _$this._uploadDate = uploadDate;

  bool? _permission;

  bool? get permission => _$this._permission;

  set permission(bool? permission) => _$this._permission = permission;

  bool? _pending;

  bool? get pending => _$this._pending;

  set pending(bool? pending) => _$this._pending = pending;

  ReportInfoBuilder() {
    ReportInfo._defaults(this);
  }

  ReportInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportId = $v.reportId;
      _title = $v.title;
      _uploadDate = $v.uploadDate;
      _permission = $v.permission;
      _pending = $v.pending;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportInfo;
  }

  @override
  void update(void Function(ReportInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportInfo build() => _build();

  _$ReportInfo _build() {
    final _$result = _$v ??
        new _$ReportInfo._(
            reportId: BuiltValueNullFieldError.checkNotNull(
                reportId, r'ReportInfo', 'reportId'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ReportInfo', 'title'),
            uploadDate: BuiltValueNullFieldError.checkNotNull(
                uploadDate, r'ReportInfo', 'uploadDate'),
            permission: permission,
            pending: pending);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
