// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppStateViewModel extends AppStateViewModel {
  @override
  final BuiltList<Task> tasks;
  @override
  final String status;
  @override
  final Function({required dynamic action}) dispatch;

  factory _$AppStateViewModel(
          [void Function(AppStateViewModelBuilder)? updates]) =>
      (new AppStateViewModelBuilder()..update(updates)).build();

  _$AppStateViewModel._(
      {required this.tasks, required this.status, required this.dispatch})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(tasks, 'AppStateViewModel', 'tasks');
    BuiltValueNullFieldError.checkNotNull(
        status, 'AppStateViewModel', 'status');
    BuiltValueNullFieldError.checkNotNull(
        dispatch, 'AppStateViewModel', 'dispatch');
  }

  @override
  AppStateViewModel rebuild(void Function(AppStateViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateViewModelBuilder toBuilder() =>
      new AppStateViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is AppStateViewModel &&
        tasks == other.tasks &&
        status == other.status &&
        dispatch == _$dynamicOther.dispatch;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, tasks.hashCode), status.hashCode), dispatch.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppStateViewModel')
          ..add('tasks', tasks)
          ..add('status', status)
          ..add('dispatch', dispatch))
        .toString();
  }
}

class AppStateViewModelBuilder
    implements Builder<AppStateViewModel, AppStateViewModelBuilder> {
  _$AppStateViewModel? _$v;

  ListBuilder<Task>? _tasks;
  ListBuilder<Task> get tasks => _$this._tasks ??= new ListBuilder<Task>();
  set tasks(ListBuilder<Task>? tasks) => _$this._tasks = tasks;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  Function({required dynamic action})? _dispatch;
  Function({required dynamic action})? get dispatch => _$this._dispatch;
  set dispatch(Function({required dynamic action})? dispatch) =>
      _$this._dispatch = dispatch;

  AppStateViewModelBuilder();

  AppStateViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks.toBuilder();
      _status = $v.status;
      _dispatch = $v.dispatch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppStateViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppStateViewModel;
  }

  @override
  void update(void Function(AppStateViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppStateViewModel build() {
    _$AppStateViewModel _$result;
    try {
      _$result = _$v ??
          new _$AppStateViewModel._(
              tasks: tasks.build(),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'AppStateViewModel', 'status'),
              dispatch: BuiltValueNullFieldError.checkNotNull(
                  dispatch, 'AppStateViewModel', 'dispatch'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasks';
        tasks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppStateViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
