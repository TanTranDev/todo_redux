import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:task_management_redux/repository/repository.dart';
import 'package:task_management_redux/store/actions/task_actions.dart';
import 'package:task_management_redux/store/actions/app_actions.dart';
import 'package:task_management_redux/store/epics/epics.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/models/task.dart';
import 'package:redux/redux.dart';
import 'package:task_management_redux/store/reducers/reducer.dart';
import 'middleware_test.mocks.dart';

@GenerateMocks([AbstractRepository])
// void main() {
//   group("Test Middleware", () {
//     test("Test get all Tasks", () async {
//       final mockAbstractRepository = MockAbstractRepository();
//       when(mockAbstractRepository.getAllTasks())
//           .thenAnswer((realInvocation) async => BuiltList<Task>([
//                 Task((b) => b..title = "Title"),
//               ]));
//       expect(
//           await mockAbstractRepository.getAllTasks(),
//           BuiltList<Task>([
//             Task((b) => b..title = "Title"),
//           ]));
//     });
//     test("Test create Task", () async {
//       final mockAbstractRepository = MockAbstractRepository();
//       when(mockAbstractRepository
//               .createTask(Task((b) => b..title = "New Task")))
//           .thenAnswer((realInvocation) async => 0);
//       expect(
//           await mockAbstractRepository
//               .createTask(Task((b) => b..title = "New Task")),
//           0);
//     });
//     test("Test update Task", () async {
//       final mockAbstractRepository = MockAbstractRepository();
//       when(mockAbstractRepository
//               .updateTask(Task((b) => b..title = "New Task")))
//           .thenAnswer((realInvocation) async => 0);
//       expect(
//           await mockAbstractRepository
//               .updateTask(Task((b) => b..title = "New Task")),
//           0);
//     });
//     test("Test delete Task", () async {
//       final mockAbstractRepository = MockAbstractRepository();
//       when(mockAbstractRepository
//               .deleteTask(Task((b) => b..title = "New Task")))
//           .thenAnswer((realInvocation) async => 0);
//       expect(
//           await mockAbstractRepository
//               .deleteTask(Task((b) => b..title = "New Task")),
//           0);
//     });
//   });
// }

void main() {
  group("Test middleware", () {
    MockAbstractRepository mockAbstractRepository = MockAbstractRepository();
    AppState firstState = AppState();
    AppMiddleware appMiddleware = AppMiddleware(mockAbstractRepository);
    final store = Store<AppState>(appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)]);

    // set up run test
    runTest(
        {required Future<dynamic> Function(Invocation) mockAnswer,
        required action,
        required dynamic matcher}) async {
      Stream<dynamic> stream = appMiddleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(
          store,
        ),
      );
      expect(
        await stream.toList(),
        matcher,
      );
    }
    // end set up run test

    test("Test", () async {
      Task task = Task((b) => b..title = "Title");
      List<Task> tasks = [
        task,
      ];
      await runTest(
        mockAnswer: (_) async {},
        action: CreateTaskMiddlewareTaskAction.create(newTask: "Title"),
        matcher: [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeTasksReducerAppAction.create(newTasks: tasks),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ],
      );
    });
  });
}
