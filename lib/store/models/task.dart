import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task.g.dart';

abstract class Task implements Built<Task, TaskBuilder> {
  int? get id;
  String? get title;
  int? get isDone;
  Task._();
  static Serializer<Task> get serializer => _$taskSerializer;
  factory Task([void Function(TaskBuilder)? updates]) = _$Task;
}
