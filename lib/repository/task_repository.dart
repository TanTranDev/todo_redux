import 'package:built_collection/built_collection.dart';
import 'package:task_management_redux/store/actions/task_actions.dart';
import 'package:task_management_redux/store/models/task.dart';

abstract class AbstractTaskRepository {
  Future<BuiltList<Task>> getAllTasks(GetAllTaskMiddlewareTaskAction action);
  Future<int> createTask(CreateTaskMiddlewareTaskAction action);
  Future<int> deleteTask(DeleteTaskMiddlewareTaskAction action);
  Future<int> updateTask(UpdateTaskMiddlewareTaskAction action);
}

class TaskRepository implements AbstractTaskRepository {
  final AbstractTaskRepository _sqlite;

  TaskRepository(this._sqlite);

  @override
  Future<int> createTask(CreateTaskMiddlewareTaskAction action) {
    return _sqlite.createTask(action);
  }

  @override
  Future<int> deleteTask(DeleteTaskMiddlewareTaskAction action) {
    return _sqlite.deleteTask(action);
  }

  @override
  Future<BuiltList<Task>> getAllTasks(GetAllTaskMiddlewareTaskAction action) {
    return _sqlite.getAllTasks(action);
  }

  @override
  Future<int> updateTask(UpdateTaskMiddlewareTaskAction action) {
    return _sqlite.updateTask(action);
  }
}
