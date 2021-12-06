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

  Stream<DoApp> epicsGetAllTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoGetAllTask) {
        try {
          yield DoChangeStatus.create(newStatus: "isLoading");
          final tasks = await repository.getAllTasks();
          yield DoChangeTasks.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatus.create(newStatus: "error");
          log(
            "Error when get all tasks from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatus.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<DoApp> epicsCreateTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoCreateTask) {
        try {
          yield DoChangeStatus.create(newStatus: "isLoading");
          final newTask = Task((b) => b..title = action.task);
          await repository.createTask(newTask);
          final tasks = await repository.getAllTasks();
          yield DoChangeTasks.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatus.create(newStatus: "error");
          log(
            "Error when create a task to local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatus.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<DoApp> epicsUpdateTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoUpdateTask) {
        try {
          yield DoChangeStatus.create(newStatus: "isLoading");
          await repository.updateTask(action.task);
          final tasks = await repository.getAllTasks();
          yield DoChangeTasks.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatus.create(newStatus: "error");
          log(
            "Error when delete a task from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatus.create(newStatus: "idle");
        }
      }
    }
  }

  Stream<DoApp> epicsDeleteTask(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoDeleteTask) {
        try {
          yield DoChangeStatus.create(newStatus: "isLoading");
          await repository.deleteTask(action.task);
          final tasks = await repository.getAllTasks();
          yield DoChangeTasks.create(newTasks: tasks.toList());
        } catch (e, stackTrack) {
          yield DoChangeStatus.create(newStatus: "error");
          log(
            "Error when delete a task from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield DoChangeStatus.create(newStatus: "idle");
        }
      }
    }
  }
}
