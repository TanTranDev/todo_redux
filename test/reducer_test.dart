import 'package:flutter_test/flutter_test.dart';
import 'package:task_management_redux/store/actions/app_actions.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/models/task.dart';
import 'package:task_management_redux/store/reducers/reducer.dart';

void main() {
  group("Test reducers", () {
    final reducer = appStateReducer;
    //begin test change status app with 3 parts
    group("Test change status app", () {
      AppState? firstState;
      setUp(() {
        firstState = AppState();
      });

      final List<String> listStatus = [
        'idle',
        'isLoading',
        'error',
      ];

      for (final status in listStatus) {
        test("Set status is $status", () async {
          final AppState newState = reducer(firstState!,
              ChangeStatusReducerAppAction.create(newStatus: status));
          final AppState expectState =
              firstState!.rebuild((p0) => p0.status = status);
          expect(newState, expectState);
        });
      }
    });
    //begin test change tasks of app
    group("Test change tasks of app", () {
      AppState? firstState;
      List<Task> newTasks = [];
      for (int i = 0; i < 3; i++) {
        newTasks.add(Task((b) => b.title = "Title $i"));
      }
      setUp(() {
        firstState = AppState();
      });

      test("Set tasks", () {
        final AppState newState = reducer(firstState!,
            ChangeTasksReducerAppAction.create(newTasks: newTasks));
        final expectState = firstState!.rebuild((p0) => p0..tasks = newTasks);
        expect(newState, expectState);
      });
    });
  });
}
