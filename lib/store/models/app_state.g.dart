// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pageID',
      serializers.serialize(object.pageID, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.tasks;
    if (value != null) {
      result
        ..add('tasks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(List, const [const FullType(Task)])));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pageID':
          result.pageID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tasks':
          result.tasks = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(Task)]))
              as List<Task>?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final int pageID;
  @override
  final List<Task>? tasks;
  @override
  final String status;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.pageID, this.tasks, required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(pageID, 'AppState', 'pageID');
    BuiltValueNullFieldError.checkNotNull(status, 'AppState', 'status');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        pageID == other.pageID &&
        tasks == other.tasks &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, pageID.hashCode), tasks.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('pageID', pageID)
          ..add('tasks', tasks)
          ..add('status', status))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  int? _pageID;
  int? get pageID => _$this._pageID;
  set pageID(int? pageID) => _$this._pageID = pageID;

  List<Task>? _tasks;
  List<Task>? get tasks => _$this._tasks;
  set tasks(List<Task>? tasks) => _$this._tasks = tasks;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageID = $v.pageID;
      _tasks = $v.tasks;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    final _$result = _$v ??
        new _$AppState._(
            pageID: BuiltValueNullFieldError.checkNotNull(
                pageID, 'AppState', 'pageID'),
            tasks: tasks,
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'AppState', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
