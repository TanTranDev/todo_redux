import 'dart:developer';

import 'package:redux_epics/redux_epics.dart';
import 'package:task_management_redux/repository/repository.dart';
import 'package:task_management_redux/store/actions/action.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/models/task.dart';

class AppMiddleware implements EpicClass<AppState> {
  final AbstractRepository repository;

  AppMiddleware(this.repository);

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
      if (action is DoGetAllTaskTaskActionEpics) {
        try {
          yield DoChangeStatusAppActionReducer.create(newStatus: "isLoading");
          final tasks = await repository.getAllTasks();
          yield DoChangeTasksAppActionReducer.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatusAppActionReducer.create(newStatus: "error");
          log(
            "Error when get all tasks from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatusAppActionReducer.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<dynamic> epicsCreateTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoCreateTaskTaskActionEpics) {
        try {
          yield DoChangeStatusAppActionReducer.create(newStatus: "isLoading");
          final newTask = Task((b) => b..title = action.task);
          await repository.createTask(newTask);
          final tasks = await repository.getAllTasks();
          yield DoChangeTasksAppActionReducer.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatusAppActionReducer.create(newStatus: "error");
          log(
            "Error when create a task to local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatusAppActionReducer.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<dynamic> epicsUpdateTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoUpdateTaskTaskActionEpics) {
        try {
          yield DoChangeStatusAppActionReducer.create(newStatus: "isLoading");
          await repository.updateTask(action.task);
          final tasks = await repository.getAllTasks();
          yield DoChangeTasksAppActionReducer.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatusAppActionReducer.create(newStatus: "error");
          log(
            "Error when delete a task from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatusAppActionReducer.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<dynamic> epicsDeleteTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoDeleteTaskTaskActionEpics) {
        try {
          yield DoChangeStatusAppActionReducer.create(newStatus: "isLoading");
          await repository.deleteTask(action.task);
          final tasks = await repository.getAllTasks();
          yield DoChangeTasksAppActionReducer.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatusAppActionReducer.create(newStatus: "error");
          log(
            "Error when delete a task from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatusAppActionReducer.create(newStatus: "idle");
        }
      }
    }
  }
}
