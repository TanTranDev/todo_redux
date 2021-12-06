import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:task_management_redux/store/models/task.dart';

part 'app_actions.g.dart';

abstract class AppAction {}

abstract class ChangeStatusReducerAppAction
    implements
        Built<ChangeStatusReducerAppAction,
            ChangeStatusReducerAppActionBuilder>,
        AppAction {
  ChangeStatusReducerAppAction._();
  String get status;
  factory ChangeStatusReducerAppAction.create({required String newStatus}) =>
      ChangeStatusReducerAppAction((update) => update..status = newStatus);
  factory ChangeStatusReducerAppAction(
          [void Function(ChangeStatusReducerAppActionBuilder) updates]) =
      _$ChangeStatusReducerAppAction;
}

abstract class ChangeTasksReducerAppAction
    implements
        Built<ChangeTasksReducerAppAction, ChangeTasksReducerAppActionBuilder>,
        AppAction {
  ChangeTasksReducerAppAction._();
  BuiltList<Task> get tasks;
  factory ChangeTasksReducerAppAction.create(
          {required BuiltList<Task> newTasks}) =>
      ChangeTasksReducerAppAction(
          (update) => update..tasks = newTasks.toBuilder());
  factory ChangeTasksReducerAppAction(
          [void Function(ChangeTasksReducerAppActionBuilder) updates]) =
      _$ChangeTasksReducerAppAction;
}
