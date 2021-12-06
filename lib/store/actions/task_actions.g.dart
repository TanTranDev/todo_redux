// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAllTaskMiddlewareTaskAction extends GetAllTaskMiddlewareTaskAction {
  factory _$GetAllTaskMiddlewareTaskAction(
          [void Function(GetAllTaskMiddlewareTaskActionBuilder)? updates]) =>
      (new GetAllTaskMiddlewareTaskActionBuilder()..update(updates)).build();

  _$GetAllTaskMiddlewareTaskAction._() : super._();

  @override
  GetAllTaskMiddlewareTaskAction rebuild(
          void Function(GetAllTaskMiddlewareTaskActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllTaskMiddlewareTaskActionBuilder toBuilder() =>
      new GetAllTaskMiddlewareTaskActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllTaskMiddlewareTaskAction;
  }

  @override
  int get hashCode {
    return 226572127;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetAllTaskMiddlewareTaskAction')
        .toString();
  }
}

class GetAllTaskMiddlewareTaskActionBuilder
    implements
        Builder<GetAllTaskMiddlewareTaskAction,
            GetAllTaskMiddlewareTaskActionBuilder> {
  _$GetAllTaskMiddlewareTaskAction? _$v;

  GetAllTaskMiddlewareTaskActionBuilder();

  @override
  void replace(GetAllTaskMiddlewareTaskAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllTaskMiddlewareTaskAction;
  }

  @override
  void update(void Function(GetAllTaskMiddlewareTaskActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetAllTaskMiddlewareTaskAction build() {
    final _$result = _$v ?? new _$GetAllTaskMiddlewareTaskAction._();
    replace(_$result);
    return _$result;
  }
}

class _$CreateTaskMiddlewareTaskAction extends CreateTaskMiddlewareTaskAction {
  @override
  final String task;

  factory _$CreateTaskMiddlewareTaskAction(
          [void Function(CreateTaskMiddlewareTaskActionBuilder)? updates]) =>
      (new CreateTaskMiddlewareTaskActionBuilder()..update(updates)).build();

  _$CreateTaskMiddlewareTaskAction._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        task, 'CreateTaskMiddlewareTaskAction', 'task');
  }

  @override
  CreateTaskMiddlewareTaskAction rebuild(
          void Function(CreateTaskMiddlewareTaskActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTaskMiddlewareTaskActionBuilder toBuilder() =>
      new CreateTaskMiddlewareTaskActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTaskMiddlewareTaskAction && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateTaskMiddlewareTaskAction')
          ..add('task', task))
        .toString();
  }
}

class CreateTaskMiddlewareTaskActionBuilder
    implements
        Builder<CreateTaskMiddlewareTaskAction,
            CreateTaskMiddlewareTaskActionBuilder> {
  _$CreateTaskMiddlewareTaskAction? _$v;

  String? _task;
  String? get task => _$this._task;
  set task(String? task) => _$this._task = task;

  CreateTaskMiddlewareTaskActionBuilder();

  CreateTaskMiddlewareTaskActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTaskMiddlewareTaskAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTaskMiddlewareTaskAction;
  }

  @override
  void update(void Function(CreateTaskMiddlewareTaskActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateTaskMiddlewareTaskAction build() {
    final _$result = _$v ??
        new _$CreateTaskMiddlewareTaskAction._(
            task: BuiltValueNullFieldError.checkNotNull(
                task, 'CreateTaskMiddlewareTaskAction', 'task'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteTaskMiddlewareTaskAction extends DeleteTaskMiddlewareTaskAction {
  @override
  final Task task;

  factory _$DeleteTaskMiddlewareTaskAction(
          [void Function(DeleteTaskMiddlewareTaskActionBuilder)? updates]) =>
      (new DeleteTaskMiddlewareTaskActionBuilder()..update(updates)).build();

  _$DeleteTaskMiddlewareTaskAction._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        task, 'DeleteTaskMiddlewareTaskAction', 'task');
  }

  @override
  DeleteTaskMiddlewareTaskAction rebuild(
          void Function(DeleteTaskMiddlewareTaskActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTaskMiddlewareTaskActionBuilder toBuilder() =>
      new DeleteTaskMiddlewareTaskActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTaskMiddlewareTaskAction && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteTaskMiddlewareTaskAction')
          ..add('task', task))
        .toString();
  }
}

class DeleteTaskMiddlewareTaskActionBuilder
    implements
        Builder<DeleteTaskMiddlewareTaskAction,
            DeleteTaskMiddlewareTaskActionBuilder> {
  _$DeleteTaskMiddlewareTaskAction? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  DeleteTaskMiddlewareTaskActionBuilder();

  DeleteTaskMiddlewareTaskActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTaskMiddlewareTaskAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTaskMiddlewareTaskAction;
  }

  @override
  void update(void Function(DeleteTaskMiddlewareTaskActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteTaskMiddlewareTaskAction build() {
    _$DeleteTaskMiddlewareTaskAction _$result;
    try {
      _$result =
          _$v ?? new _$DeleteTaskMiddlewareTaskAction._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeleteTaskMiddlewareTaskAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateTaskMiddlewareTaskAction extends UpdateTaskMiddlewareTaskAction {
  @override
  final Task task;

  factory _$UpdateTaskMiddlewareTaskAction(
          [void Function(UpdateTaskMiddlewareTaskActionBuilder)? updates]) =>
      (new UpdateTaskMiddlewareTaskActionBuilder()..update(updates)).build();

  _$UpdateTaskMiddlewareTaskAction._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        task, 'UpdateTaskMiddlewareTaskAction', 'task');
  }

  @override
  UpdateTaskMiddlewareTaskAction rebuild(
          void Function(UpdateTaskMiddlewareTaskActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTaskMiddlewareTaskActionBuilder toBuilder() =>
      new UpdateTaskMiddlewareTaskActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTaskMiddlewareTaskAction && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateTaskMiddlewareTaskAction')
          ..add('task', task))
        .toString();
  }
}

class UpdateTaskMiddlewareTaskActionBuilder
    implements
        Builder<UpdateTaskMiddlewareTaskAction,
            UpdateTaskMiddlewareTaskActionBuilder> {
  _$UpdateTaskMiddlewareTaskAction? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  UpdateTaskMiddlewareTaskActionBuilder();

  UpdateTaskMiddlewareTaskActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTaskMiddlewareTaskAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTaskMiddlewareTaskAction;
  }

  @override
  void update(void Function(UpdateTaskMiddlewareTaskActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateTaskMiddlewareTaskAction build() {
    _$UpdateTaskMiddlewareTaskAction _$result;
    try {
      _$result =
          _$v ?? new _$UpdateTaskMiddlewareTaskAction._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateTaskMiddlewareTaskAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
