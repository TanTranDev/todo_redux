// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeStatusReducerAppAction extends ChangeStatusReducerAppAction {
  @override
  final String status;

  factory _$ChangeStatusReducerAppAction(
          [void Function(ChangeStatusReducerAppActionBuilder)? updates]) =>
      (new ChangeStatusReducerAppActionBuilder()..update(updates)).build();

  _$ChangeStatusReducerAppAction._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'ChangeStatusReducerAppAction', 'status');
  }

  @override
  ChangeStatusReducerAppAction rebuild(
          void Function(ChangeStatusReducerAppActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStatusReducerAppActionBuilder toBuilder() =>
      new ChangeStatusReducerAppActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeStatusReducerAppAction && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeStatusReducerAppAction')
          ..add('status', status))
        .toString();
  }
}

class ChangeStatusReducerAppActionBuilder
    implements
        Builder<ChangeStatusReducerAppAction,
            ChangeStatusReducerAppActionBuilder> {
  _$ChangeStatusReducerAppAction? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ChangeStatusReducerAppActionBuilder();

  ChangeStatusReducerAppActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeStatusReducerAppAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeStatusReducerAppAction;
  }

  @override
  void update(void Function(ChangeStatusReducerAppActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeStatusReducerAppAction build() {
    final _$result = _$v ??
        new _$ChangeStatusReducerAppAction._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'ChangeStatusReducerAppAction', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$ChangeTasksReducerAppAction extends ChangeTasksReducerAppAction {
  @override
  final List<Task> tasks;

  factory _$ChangeTasksReducerAppAction(
          [void Function(ChangeTasksReducerAppActionBuilder)? updates]) =>
      (new ChangeTasksReducerAppActionBuilder()..update(updates)).build();

  _$ChangeTasksReducerAppAction._({required this.tasks}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tasks, 'ChangeTasksReducerAppAction', 'tasks');
  }

  @override
  ChangeTasksReducerAppAction rebuild(
          void Function(ChangeTasksReducerAppActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeTasksReducerAppActionBuilder toBuilder() =>
      new ChangeTasksReducerAppActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeTasksReducerAppAction && tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeTasksReducerAppAction')
          ..add('tasks', tasks))
        .toString();
  }
}

class ChangeTasksReducerAppActionBuilder
    implements
        Builder<ChangeTasksReducerAppAction,
            ChangeTasksReducerAppActionBuilder> {
  _$ChangeTasksReducerAppAction? _$v;

  List<Task>? _tasks;
  List<Task>? get tasks => _$this._tasks;
  set tasks(List<Task>? tasks) => _$this._tasks = tasks;

  ChangeTasksReducerAppActionBuilder();

  ChangeTasksReducerAppActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeTasksReducerAppAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeTasksReducerAppAction;
  }

  @override
  void update(void Function(ChangeTasksReducerAppActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeTasksReducerAppAction build() {
    final _$result = _$v ??
        new _$ChangeTasksReducerAppAction._(
            tasks: BuiltValueNullFieldError.checkNotNull(
                tasks, 'ChangeTasksReducerAppAction', 'tasks'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
