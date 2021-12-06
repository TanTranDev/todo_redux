import 'package:built_value/built_value.dart';
import 'package:task_management_redux/store/models/task.dart';

part 'task_actions.g.dart';

abstract class TaskAction {}

abstract class GetAllTaskMiddlewareTaskAction
    implements
        Built<GetAllTaskMiddlewareTaskAction,
            GetAllTaskMiddlewareTaskActionBuilder>,
        TaskAction {
  GetAllTaskMiddlewareTaskAction._();
  factory GetAllTaskMiddlewareTaskAction(
          [void Function(GetAllTaskMiddlewareTaskActionBuilder) updates]) =
      _$GetAllTaskMiddlewareTaskAction;
}

abstract class CreateTaskMiddlewareTaskAction
    implements
        Built<CreateTaskMiddlewareTaskAction,
            CreateTaskMiddlewareTaskActionBuilder>,
        TaskAction {
  CreateTaskMiddlewareTaskAction._();
  String get task;
  factory CreateTaskMiddlewareTaskAction.create({required String newTask}) =>
      CreateTaskMiddlewareTaskAction((update) => update..task = newTask);
  factory CreateTaskMiddlewareTaskAction(
          [void Function(CreateTaskMiddlewareTaskActionBuilder) updates]) =
      _$CreateTaskMiddlewareTaskAction;
}

abstract class DeleteTaskMiddlewareTaskAction
    implements
        Built<DeleteTaskMiddlewareTaskAction,
            DeleteTaskMiddlewareTaskActionBuilder>,
        TaskAction {
  DeleteTaskMiddlewareTaskAction._();
  Task get task;
  factory DeleteTaskMiddlewareTaskAction.create({required Task deleteTask}) =>
      DeleteTaskMiddlewareTaskAction(
          (update) => update..task = deleteTask.toBuilder());
  factory DeleteTaskMiddlewareTaskAction(
          [void Function(DeleteTaskMiddlewareTaskActionBuilder) updates]) =
      _$DeleteTaskMiddlewareTaskAction;
}

abstract class UpdateTaskMiddlewareTaskAction
    implements
        Built<UpdateTaskMiddlewareTaskAction,
            UpdateTaskMiddlewareTaskActionBuilder>,
        TaskAction {
  UpdateTaskMiddlewareTaskAction._();
  Task get task;
  factory UpdateTaskMiddlewareTaskAction.create({required Task updateTask}) =>
      UpdateTaskMiddlewareTaskAction(
          (update) => update..task = updateTask.toBuilder());
  factory UpdateTaskMiddlewareTaskAction(
          [void Function(UpdateTaskMiddlewareTaskActionBuilder) updates]) =
      _$UpdateTaskMiddlewareTaskAction;
}
