// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Task> _$taskSerializer = new _$TaskSerializer();

class _$TaskSerializer implements StructuredSerializer<Task> {
  @override
  final Iterable<Type> types = const [Task, _$Task];
  @override
  final String wireName = 'Task';

  @override
  Iterable<Object?> serialize(Serializers serializers, Task object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDone;
    if (value != null) {
      result
        ..add('isDone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Task deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isDone':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$Task extends Task {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? isDone;

  factory _$Task([void Function(TaskBuilder)? updates]) =>
      (new TaskBuilder()..update(updates)).build();

  _$Task._({this.id, this.title, this.isDone}) : super._();

  @override
  Task rebuild(void Function(TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskBuilder toBuilder() => new TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task &&
        id == other.id &&
        title == other.title &&
        isDone == other.isDone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), title.hashCode), isDone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Task')
          ..add('id', id)
          ..add('title', title)
          ..add('isDone', isDone))
        .toString();
  }
}

class TaskBuilder implements Builder<Task, TaskBuilder> {
  _$Task? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _isDone;
  int? get isDone => _$this._isDone;
  set isDone(int? isDone) => _$this._isDone = isDone;

  TaskBuilder();

  TaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _isDone = $v.isDone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Task;
  }

  @override
  void update(void Function(TaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Task build() {
    final _$result = _$v ?? new _$Task._(id: id, title: title, isDone: isDone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
