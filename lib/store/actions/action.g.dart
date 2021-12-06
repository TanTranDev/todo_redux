// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoGetAllTaskTaskActionEpics extends DoGetAllTaskTaskActionEpics {
  factory _$DoGetAllTaskTaskActionEpics(
          [void Function(DoGetAllTaskTaskActionEpicsBuilder)? updates]) =>
      (new DoGetAllTaskTaskActionEpicsBuilder()..update(updates)).build();

  _$DoGetAllTaskTaskActionEpics._() : super._();

  @override
  DoGetAllTaskTaskActionEpics rebuild(
          void Function(DoGetAllTaskTaskActionEpicsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoGetAllTaskTaskActionEpicsBuilder toBuilder() =>
      new DoGetAllTaskTaskActionEpicsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoGetAllTaskTaskActionEpics;
  }

  @override
  int get hashCode {
    return 259601537;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DoGetAllTaskTaskActionEpics')
        .toString();
  }
}

class DoGetAllTaskTaskActionEpicsBuilder
    implements
        Builder<DoGetAllTaskTaskActionEpics,
            DoGetAllTaskTaskActionEpicsBuilder> {
  _$DoGetAllTaskTaskActionEpics? _$v;

  DoGetAllTaskTaskActionEpicsBuilder();

  @override
  void replace(DoGetAllTaskTaskActionEpics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoGetAllTaskTaskActionEpics;
  }

  @override
  void update(void Function(DoGetAllTaskTaskActionEpicsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoGetAllTaskTaskActionEpics build() {
    final _$result = _$v ?? new _$DoGetAllTaskTaskActionEpics._();
    replace(_$result);
    return _$result;
  }
}

class _$DoCreateTaskTaskActionEpics extends DoCreateTaskTaskActionEpics {
  @override
  final String task;

  factory _$DoCreateTaskTaskActionEpics(
          [void Function(DoCreateTaskTaskActionEpicsBuilder)? updates]) =>
      (new DoCreateTaskTaskActionEpicsBuilder()..update(updates)).build();

  _$DoCreateTaskTaskActionEpics._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        task, 'DoCreateTaskTaskActionEpics', 'task');
  }

  @override
  DoCreateTaskTaskActionEpics rebuild(
          void Function(DoCreateTaskTaskActionEpicsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoCreateTaskTaskActionEpicsBuilder toBuilder() =>
      new DoCreateTaskTaskActionEpicsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoCreateTaskTaskActionEpics && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoCreateTaskTaskActionEpics')
          ..add('task', task))
        .toString();
  }
}

class DoCreateTaskTaskActionEpicsBuilder
    implements
        Builder<DoCreateTaskTaskActionEpics,
            DoCreateTaskTaskActionEpicsBuilder> {
  _$DoCreateTaskTaskActionEpics? _$v;

  String? _task;
  String? get task => _$this._task;
  set task(String? task) => _$this._task = task;

  DoCreateTaskTaskActionEpicsBuilder();

  DoCreateTaskTaskActionEpicsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoCreateTaskTaskActionEpics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoCreateTaskTaskActionEpics;
  }

  @override
  void update(void Function(DoCreateTaskTaskActionEpicsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoCreateTaskTaskActionEpics build() {
    final _$result = _$v ??
        new _$DoCreateTaskTaskActionEpics._(
            task: BuiltValueNullFieldError.checkNotNull(
                task, 'DoCreateTaskTaskActionEpics', 'task'));
    replace(_$result);
    return _$result;
  }
}

class _$DoDeleteTaskTaskActionEpics extends DoDeleteTaskTaskActionEpics {
  @override
  final Task task;

  factory _$DoDeleteTaskTaskActionEpics(
          [void Function(DoDeleteTaskTaskActionEpicsBuilder)? updates]) =>
      (new DoDeleteTaskTaskActionEpicsBuilder()..update(updates)).build();

  _$DoDeleteTaskTaskActionEpics._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        task, 'DoDeleteTaskTaskActionEpics', 'task');
  }

  @override
  DoDeleteTaskTaskActionEpics rebuild(
          void Function(DoDeleteTaskTaskActionEpicsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoDeleteTaskTaskActionEpicsBuilder toBuilder() =>
      new DoDeleteTaskTaskActionEpicsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoDeleteTaskTaskActionEpics && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoDeleteTaskTaskActionEpics')
          ..add('task', task))
        .toString();
  }
}

class DoDeleteTaskTaskActionEpicsBuilder
    implements
        Builder<DoDeleteTaskTaskActionEpics,
            DoDeleteTaskTaskActionEpicsBuilder> {
  _$DoDeleteTaskTaskActionEpics? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  DoDeleteTaskTaskActionEpicsBuilder();

  DoDeleteTaskTaskActionEpicsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoDeleteTaskTaskActionEpics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoDeleteTaskTaskActionEpics;
  }

  @override
  void update(void Function(DoDeleteTaskTaskActionEpicsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoDeleteTaskTaskActionEpics build() {
    _$DoDeleteTaskTaskActionEpics _$result;
    try {
      _$result = _$v ?? new _$DoDeleteTaskTaskActionEpics._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoDeleteTaskTaskActionEpics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DoUpdateTaskTaskActionEpics extends DoUpdateTaskTaskActionEpics {
  @override
  final Task task;

  factory _$DoUpdateTaskTaskActionEpics(
          [void Function(DoUpdateTaskTaskActionEpicsBuilder)? updates]) =>
      (new DoUpdateTaskTaskActionEpicsBuilder()..update(updates)).build();

  _$DoUpdateTaskTaskActionEpics._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        task, 'DoUpdateTaskTaskActionEpics', 'task');
  }

  @override
  DoUpdateTaskTaskActionEpics rebuild(
          void Function(DoUpdateTaskTaskActionEpicsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoUpdateTaskTaskActionEpicsBuilder toBuilder() =>
      new DoUpdateTaskTaskActionEpicsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoUpdateTaskTaskActionEpics && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoUpdateTaskTaskActionEpics')
          ..add('task', task))
        .toString();
  }
}

class DoUpdateTaskTaskActionEpicsBuilder
    implements
        Builder<DoUpdateTaskTaskActionEpics,
            DoUpdateTaskTaskActionEpicsBuilder> {
  _$DoUpdateTaskTaskActionEpics? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  DoUpdateTaskTaskActionEpicsBuilder();

  DoUpdateTaskTaskActionEpicsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoUpdateTaskTaskActionEpics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoUpdateTaskTaskActionEpics;
  }

  @override
  void update(void Function(DoUpdateTaskTaskActionEpicsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoUpdateTaskTaskActionEpics build() {
    _$DoUpdateTaskTaskActionEpics _$result;
    try {
      _$result = _$v ?? new _$DoUpdateTaskTaskActionEpics._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoUpdateTaskTaskActionEpics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DoChangeStatusAppActionReducer extends DoChangeStatusAppActionReducer {
  @override
  final String status;

  factory _$DoChangeStatusAppActionReducer(
          [void Function(DoChangeStatusAppActionReducerBuilder)? updates]) =>
      (new DoChangeStatusAppActionReducerBuilder()..update(updates)).build();

  _$DoChangeStatusAppActionReducer._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'DoChangeStatusAppActionReducer', 'status');
  }

  @override
  DoChangeStatusAppActionReducer rebuild(
          void Function(DoChangeStatusAppActionReducerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoChangeStatusAppActionReducerBuilder toBuilder() =>
      new DoChangeStatusAppActionReducerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoChangeStatusAppActionReducer && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoChangeStatusAppActionReducer')
          ..add('status', status))
        .toString();
  }
}

class DoChangeStatusAppActionReducerBuilder
    implements
        Builder<DoChangeStatusAppActionReducer,
            DoChangeStatusAppActionReducerBuilder> {
  _$DoChangeStatusAppActionReducer? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DoChangeStatusAppActionReducerBuilder();

  DoChangeStatusAppActionReducerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoChangeStatusAppActionReducer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoChangeStatusAppActionReducer;
  }

  @override
  void update(void Function(DoChangeStatusAppActionReducerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoChangeStatusAppActionReducer build() {
    final _$result = _$v ??
        new _$DoChangeStatusAppActionReducer._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'DoChangeStatusAppActionReducer', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$DoChangeTasksAppActionReducer extends DoChangeTasksAppActionReducer {
  @override
  final List<Task> tasks;

  factory _$DoChangeTasksAppActionReducer(
          [void Function(DoChangeTasksAppActionReducerBuilder)? updates]) =>
      (new DoChangeTasksAppActionReducerBuilder()..update(updates)).build();

  _$DoChangeTasksAppActionReducer._({required this.tasks}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tasks, 'DoChangeTasksAppActionReducer', 'tasks');
  }

  @override
  DoChangeTasksAppActionReducer rebuild(
          void Function(DoChangeTasksAppActionReducerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoChangeTasksAppActionReducerBuilder toBuilder() =>
      new DoChangeTasksAppActionReducerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoChangeTasksAppActionReducer && tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoChangeTasksAppActionReducer')
          ..add('tasks', tasks))
        .toString();
  }
}

class DoChangeTasksAppActionReducerBuilder
    implements
        Builder<DoChangeTasksAppActionReducer,
            DoChangeTasksAppActionReducerBuilder> {
  _$DoChangeTasksAppActionReducer? _$v;

  List<Task>? _tasks;
  List<Task>? get tasks => _$this._tasks;
  set tasks(List<Task>? tasks) => _$this._tasks = tasks;

  DoChangeTasksAppActionReducerBuilder();

  DoChangeTasksAppActionReducerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoChangeTasksAppActionReducer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoChangeTasksAppActionReducer;
  }

  @override
  void update(void Function(DoChangeTasksAppActionReducerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoChangeTasksAppActionReducer build() {
    final _$result = _$v ??
        new _$DoChangeTasksAppActionReducer._(
            tasks: BuiltValueNullFieldError.checkNotNull(
                tasks, 'DoChangeTasksAppActionReducer', 'tasks'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
