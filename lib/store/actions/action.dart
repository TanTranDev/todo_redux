import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:task_management_redux/store/models/task.dart';

part 'action.g.dart';

abstract class DoApp {}

abstract class DoGetAllTask
    implements Built<DoGetAllTask, DoGetAllTaskBuilder>, DoApp {
  DoGetAllTask._();
  factory DoGetAllTask([void Function(DoGetAllTaskBuilder) updates]) =
      _$DoGetAllTask;
}

abstract class DoCreateTask
    implements Built<DoCreateTask, DoCreateTaskBuilder>, DoApp {
  DoCreateTask._();
  String get task;
  factory DoCreateTask.create({required String newTask}) =>
      DoCreateTask((update) => update..task = newTask);
  factory DoCreateTask([void Function(DoCreateTaskBuilder) updates]) =
      _$DoCreateTask;
}

abstract class DoDeleteTask
    implements Built<DoDeleteTask, DoDeleteTaskBuilder>, DoApp {
  DoDeleteTask._();
  Task get task;
  factory DoDeleteTask.create({required Task deleteTask}) =>
      DoDeleteTask((update) => update..task = deleteTask.toBuilder());
  factory DoDeleteTask([void Function(DoDeleteTaskBuilder) updates]) =
      _$DoDeleteTask;
}

abstract class DoUpdateTask
    implements Built<DoUpdateTask, DoUpdateTaskBuilder>, DoApp {
  DoUpdateTask._();
  Task get task;
  factory DoUpdateTask.create({required Task updateTask}) =>
      DoUpdateTask((update) => update..task = updateTask.toBuilder());
  factory DoUpdateTask([void Function(DoUpdateTaskBuilder) updates]) =
      _$DoUpdateTask;
}

abstract class DoChangeStatus
    implements Built<DoChangeStatus, DoChangeStatusBuilder>, DoApp {
  DoChangeStatus._();
  String get status;
  factory DoChangeStatus.create({required String newStatus}) =>
      DoChangeStatus((update) => update..status = newStatus);
  factory DoChangeStatus([void Function(DoChangeStatusBuilder) updates]) =
      _$DoChangeStatus;
}

abstract class DoChangeTasks
    implements Built<DoChangeTasks, DoChangeTasksBuilder>, DoApp {
  DoChangeTasks._();
  List<Task> get tasks;
  factory DoChangeTasks.create({required List<Task> newTasks}) =>
      DoChangeTasks((update) => update..tasks = newTasks);
  factory DoChangeTasks([void Function(DoChangeTasksBuilder) updates]) =
      _$DoChangeTasks;
}
