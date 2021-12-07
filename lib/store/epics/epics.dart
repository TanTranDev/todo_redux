import 'dart:developer';

import 'package:redux_epics/redux_epics.dart';
import 'package:task_management_redux/repository/task_repository.dart';
import 'package:task_management_redux/store/actions/task_actions.dart';
import 'package:task_management_redux/store/actions/app_actions.dart';
import 'package:task_management_redux/store/models/app_state.dart';

class AppMiddleware implements EpicClass<AppState> {
  final AbstractTaskRepository _repository;

  AppMiddleware(this._repository);

  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([
      epicsGetAllTask,
      epicsCreateTask,
      epicsUpdateTask,
      epicsDeleteTask,
    ])(actions, store);
  }

  Stream<dynamic> epicsGetAllTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is GetAllTaskMiddlewareTaskAction) {
        try {
          yield ChangeStatusReducerAppAction.create(newStatus: "isLoading");
          final tasks = await _repository.getAllTasks(action);
          yield ChangeTasksReducerAppAction.create(newTasks: tasks);
        } catch (e, stackTrack) {
          yield ChangeStatusReducerAppAction.create(newStatus: "error");
          log(
            "Error when get all tasks from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield ChangeStatusReducerAppAction.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<dynamic> epicsCreateTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is CreateTaskMiddlewareTaskAction) {
        try {
          yield ChangeStatusReducerAppAction.create(newStatus: "isLoading");
          // final newTask = Task((b) => b..title = action.task);
          await _repository.createTask(
              CreateTaskMiddlewareTaskAction.create(newTask: action.task));
          final tasks =
              await _repository.getAllTasks(GetAllTaskMiddlewareTaskAction());
          yield ChangeTasksReducerAppAction.create(newTasks: tasks);
        } catch (e, stackTrack) {
          yield ChangeStatusReducerAppAction.create(newStatus: "error");
          log(
            "Error when create a task to local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield ChangeStatusReducerAppAction.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<dynamic> epicsUpdateTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is UpdateTaskMiddlewareTaskAction) {
        try {
          yield ChangeStatusReducerAppAction.create(newStatus: "isLoading");
          await _repository.updateTask(
              UpdateTaskMiddlewareTaskAction.create(updateTask: action.task));
          final tasks =
              await _repository.getAllTasks(GetAllTaskMiddlewareTaskAction());
          yield ChangeTasksReducerAppAction.create(newTasks: tasks);
        } catch (e, stackTrack) {
          yield ChangeStatusReducerAppAction.create(newStatus: "error");
          log(
            "Error when delete a task from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield ChangeStatusReducerAppAction.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<dynamic> epicsDeleteTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DeleteTaskMiddlewareTaskAction) {
        try {
          yield ChangeStatusReducerAppAction.create(newStatus: "isLoading");
          await _repository.deleteTask(
              DeleteTaskMiddlewareTaskAction.create(deleteTask: action.task));
          final tasks =
              await _repository.getAllTasks(GetAllTaskMiddlewareTaskAction());
          yield ChangeTasksReducerAppAction.create(newTasks: tasks);
        } catch (e, stackTrack) {
          yield ChangeStatusReducerAppAction.create(newStatus: "error");
          log(
            "Error when delete a task from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield ChangeStatusReducerAppAction.create(newStatus: "idle");
        }
      }
    }
  }
}
