// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoGetAllTask extends DoGetAllTask {
  factory _$DoGetAllTask([void Function(DoGetAllTaskBuilder)? updates]) =>
      (new DoGetAllTaskBuilder()..update(updates)).build();

  _$DoGetAllTask._() : super._();

  @override
  DoGetAllTask rebuild(void Function(DoGetAllTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoGetAllTaskBuilder toBuilder() => new DoGetAllTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoGetAllTask;
  }

  @override
  int get hashCode {
    return 476858770;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DoGetAllTask').toString();
  }
}

class DoGetAllTaskBuilder
    implements Builder<DoGetAllTask, DoGetAllTaskBuilder> {
  _$DoGetAllTask? _$v;

  DoGetAllTaskBuilder();

  @override
  void replace(DoGetAllTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoGetAllTask;
  }

  @override
  void update(void Function(DoGetAllTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoGetAllTask build() {
    final _$result = _$v ?? new _$DoGetAllTask._();
    replace(_$result);
    return _$result;
  }
}

class _$DoCreateTask extends DoCreateTask {
  @override
  final String task;

  factory _$DoCreateTask([void Function(DoCreateTaskBuilder)? updates]) =>
      (new DoCreateTaskBuilder()..update(updates)).build();

  _$DoCreateTask._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(task, 'DoCreateTask', 'task');
  }

  @override
  DoCreateTask rebuild(void Function(DoCreateTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoCreateTaskBuilder toBuilder() => new DoCreateTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoCreateTask && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoCreateTask')..add('task', task))
        .toString();
  }
}

class DoCreateTaskBuilder
    implements Builder<DoCreateTask, DoCreateTaskBuilder> {
  _$DoCreateTask? _$v;

  String? _task;
  String? get task => _$this._task;
  set task(String? task) => _$this._task = task;

  DoCreateTaskBuilder();

  DoCreateTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoCreateTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoCreateTask;
  }

  @override
  void update(void Function(DoCreateTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoCreateTask build() {
    final _$result = _$v ??
        new _$DoCreateTask._(
            task: BuiltValueNullFieldError.checkNotNull(
                task, 'DoCreateTask', 'task'));
    replace(_$result);
    return _$result;
  }
}

class _$DoDeleteTask extends DoDeleteTask {
  @override
  final Task task;

  factory _$DoDeleteTask([void Function(DoDeleteTaskBuilder)? updates]) =>
      (new DoDeleteTaskBuilder()..update(updates)).build();

  _$DoDeleteTask._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(task, 'DoDeleteTask', 'task');
  }

  @override
  DoDeleteTask rebuild(void Function(DoDeleteTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoDeleteTaskBuilder toBuilder() => new DoDeleteTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoDeleteTask && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoDeleteTask')..add('task', task))
        .toString();
  }
}

class DoDeleteTaskBuilder
    implements Builder<DoDeleteTask, DoDeleteTaskBuilder> {
  _$DoDeleteTask? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  DoDeleteTaskBuilder();

  DoDeleteTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoDeleteTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoDeleteTask;
  }

  @override
  void update(void Function(DoDeleteTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoDeleteTask build() {
    _$DoDeleteTask _$result;
    try {
      _$result = _$v ?? new _$DoDeleteTask._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoDeleteTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DoUpdateTask extends DoUpdateTask {
  @override
  final Task task;

  factory _$DoUpdateTask([void Function(DoUpdateTaskBuilder)? updates]) =>
      (new DoUpdateTaskBuilder()..update(updates)).build();

  _$DoUpdateTask._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(task, 'DoUpdateTask', 'task');
  }

  @override
  DoUpdateTask rebuild(void Function(DoUpdateTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoUpdateTaskBuilder toBuilder() => new DoUpdateTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoUpdateTask && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoUpdateTask')..add('task', task))
        .toString();
  }
}

class DoUpdateTaskBuilder
    implements Builder<DoUpdateTask, DoUpdateTaskBuilder> {
  _$DoUpdateTask? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  DoUpdateTaskBuilder();

  DoUpdateTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoUpdateTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoUpdateTask;
  }

  @override
  void update(void Function(DoUpdateTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoUpdateTask build() {
    _$DoUpdateTask _$result;
    try {
      _$result = _$v ?? new _$DoUpdateTask._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoUpdateTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DoChangeStatus extends DoChangeStatus {
  @override
  final String status;

  factory _$DoChangeStatus([void Function(DoChangeStatusBuilder)? updates]) =>
      (new DoChangeStatusBuilder()..update(updates)).build();

  _$DoChangeStatus._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'DoChangeStatus', 'status');
  }

  @override
  DoChangeStatus rebuild(void Function(DoChangeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoChangeStatusBuilder toBuilder() =>
      new DoChangeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoChangeStatus && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoChangeStatus')
          ..add('status', status))
        .toString();
  }
}

class DoChangeStatusBuilder
    implements Builder<DoChangeStatus, DoChangeStatusBuilder> {
  _$DoChangeStatus? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DoChangeStatusBuilder();

  DoChangeStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoChangeStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoChangeStatus;
  }

  @override
  void update(void Function(DoChangeStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoChangeStatus build() {
    final _$result = _$v ??
        new _$DoChangeStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'DoChangeStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$DoChangeTasks extends DoChangeTasks {
  @override
  final List<Task> tasks;

  factory _$DoChangeTasks([void Function(DoChangeTasksBuilder)? updates]) =>
      (new DoChangeTasksBuilder()..update(updates)).build();

  _$DoChangeTasks._({required this.tasks}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tasks, 'DoChangeTasks', 'tasks');
  }

  @override
  DoChangeTasks rebuild(void Function(DoChangeTasksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoChangeTasksBuilder toBuilder() => new DoChangeTasksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoChangeTasks && tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoChangeTasks')..add('tasks', tasks))
        .toString();
  }
}

class DoChangeTasksBuilder
    implements Builder<DoChangeTasks, DoChangeTasksBuilder> {
  _$DoChangeTasks? _$v;

  List<Task>? _tasks;
  List<Task>? get tasks => _$this._tasks;
  set tasks(List<Task>? tasks) => _$this._tasks = tasks;

  DoChangeTasksBuilder();

  DoChangeTasksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoChangeTasks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoChangeTasks;
  }

  @override
  void update(void Function(DoChangeTasksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoChangeTasks build() {
    final _$result = _$v ??
        new _$DoChangeTasks._(
            tasks: BuiltValueNullFieldError.checkNotNull(
                tasks, 'DoChangeTasks', 'tasks'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
