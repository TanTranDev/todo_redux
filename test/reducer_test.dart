import 'package:flutter_test/flutter_test.dart';
import 'package:task_management_redux/store/actions/action.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/models/task.dart';
import 'package:task_management_redux/store/reducers/reducer.dart';

void main() {
  group("Test reducers", () {
    //begin test change status app with 3 parts
    group("Test change status app", () {
      AppState? firstState;
      AppState Function({required String status})? reducerSetStatus;

      setUp(() {
        firstState = AppState();
        reducerSetStatus = ({required String status}) {
          return reducerChangeStatus(
              firstState!, DoChangeStatus.create(newStatus: status));
        };
      });

      final List<String> listStatus = [
        'idle',
        'isLoading',
        'error',
      ];

      for (final status in listStatus) {
        test("Set status is $status", () async {
          final AppState newState = reducerSetStatus!(status: status);
          expect(newState.status, status);
        });
      }
    });
    //begin test change tasks of app
    group("Test change tasks of app", () {
      AppState? firstState;
      AppState Function({required List<Task> newTasks})? reducerSetTasks;
      List<Task> newTasks = [];
      for (int i = 0; i < 3; i++) {
        newTasks.add(Task((b) => b.title = "Title $i"));
      }
      setUp(() {
        firstState = AppState();
        reducerSetTasks = ({required List<Task> newTasks}) {
          return reducerChangeTasks(
              firstState!, DoChangeTasks.create(newTasks: newTasks));
        };
      });

      test("Set tasks", () {
        final AppState newState = reducerSetTasks!(newTasks: newTasks);
        expect(newState.tasks!.length, 3);
        expect(newState.tasks!.last.title, "Title 2");
      });
    });
  });
}
