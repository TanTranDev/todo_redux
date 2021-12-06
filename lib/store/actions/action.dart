import 'package:built_value/built_value.dart';
import 'package:task_management_redux/store/models/task.dart';

part 'action.g.dart';

abstract class AppAction {}

abstract class TaskAction {}

abstract class DoGetAllTaskTaskActionEpics
    implements
        Built<DoGetAllTaskTaskActionEpics, DoGetAllTaskTaskActionEpicsBuilder>,
        TaskAction {
  DoGetAllTaskTaskActionEpics._();
  factory DoGetAllTaskTaskActionEpics(
          [void Function(DoGetAllTaskTaskActionEpicsBuilder) updates]) =
      _$DoGetAllTaskTaskActionEpics;
}

abstract class DoCreateTaskTaskActionEpics
    implements
        Built<DoCreateTaskTaskActionEpics, DoCreateTaskTaskActionEpicsBuilder>,
        TaskAction {
  DoCreateTaskTaskActionEpics._();
  String get task;
  factory DoCreateTaskTaskActionEpics.create({required String newTask}) =>
      DoCreateTaskTaskActionEpics((update) => update..task = newTask);
  factory DoCreateTaskTaskActionEpics(
          [void Function(DoCreateTaskTaskActionEpicsBuilder) updates]) =
      _$DoCreateTaskTaskActionEpics;
}

abstract class DoDeleteTaskTaskActionEpics
    implements
        Built<DoDeleteTaskTaskActionEpics, DoDeleteTaskTaskActionEpicsBuilder>,
        TaskAction {
  DoDeleteTaskTaskActionEpics._();
  Task get task;
  factory DoDeleteTaskTaskActionEpics.create({required Task deleteTask}) =>
      DoDeleteTaskTaskActionEpics(
          (update) => update..task = deleteTask.toBuilder());
  factory DoDeleteTaskTaskActionEpics(
          [void Function(DoDeleteTaskTaskActionEpicsBuilder) updates]) =
      _$DoDeleteTaskTaskActionEpics;
}

abstract class DoUpdateTaskTaskActionEpics
    implements
        Built<DoUpdateTaskTaskActionEpics, DoUpdateTaskTaskActionEpicsBuilder>,
        TaskAction {
  DoUpdateTaskTaskActionEpics._();
  Task get task;
  factory DoUpdateTaskTaskActionEpics.create({required Task updateTask}) =>
      DoUpdateTaskTaskActionEpics(
          (update) => update..task = updateTask.toBuilder());
  factory DoUpdateTaskTaskActionEpics(
          [void Function(DoUpdateTaskTaskActionEpicsBuilder) updates]) =
      _$DoUpdateTaskTaskActionEpics;
}

abstract class DoChangeStatusAppActionReducer
    implements
        Built<DoChangeStatusAppActionReducer,
            DoChangeStatusAppActionReducerBuilder>,
        AppAction {
  DoChangeStatusAppActionReducer._();
  String get status;
  factory DoChangeStatusAppActionReducer.create({required String newStatus}) =>
      DoChangeStatusAppActionReducer((update) => update..status = newStatus);
  factory DoChangeStatusAppActionReducer(
          [void Function(DoChangeStatusAppActionReducerBuilder) updates]) =
      _$DoChangeStatusAppActionReducer;
}

abstract class DoChangeTasksAppActionReducer
    implements
        Built<DoChangeTasksAppActionReducer,
            DoChangeTasksAppActionReducerBuilder>,
        AppAction {
  DoChangeTasksAppActionReducer._();
  List<Task> get tasks;
  factory DoChangeTasksAppActionReducer.create(
          {required List<Task> newTasks}) =>
      DoChangeTasksAppActionReducer((update) => update..tasks = newTasks);
  factory DoChangeTasksAppActionReducer(
          [void Function(DoChangeTasksAppActionReducerBuilder) updates]) =
      _$DoChangeTasksAppActionReducer;
}
