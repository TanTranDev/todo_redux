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
void main() {
  MockAbstractRepository mockAbstractRepository = MockAbstractRepository();
  AppState firstState = AppState();
  AppMiddleware appMiddleware = AppMiddleware(mockAbstractRepository);
  final store = Store<AppState>(appStateReducer,
      initialState: firstState,
      middleware: [EpicMiddleware<AppState>(appMiddleware)]);
  Task task = Task((b) => b..title = "Title");
  group("Test middleware get all tasks", () {
    // set up run test
    runTest(
        {required Future<BuiltList<Task>> Function(Invocation) mockAnswer,
        required action,
        required dynamic matcher}) async {
      Stream<dynamic> stream = appMiddleware.call(
        Stream.fromIterable([action]).asBroadcastStream(),
        EpicStore<AppState>(
          store,
        ),
      );
      when(mockAbstractRepository.getAllTasks()).thenAnswer(mockAnswer);
      expect(
        await stream.toList().then((value) => value.toString()),
        matcher.toString(),
      );
    }
    // end set up run test

    test("let test get all tasks", () async {
      Task task = Task((b) => b..title = "Title");
      List<Task> tasks = [
        task,
      ];
      await runTest(
        mockAnswer: (_) async {
          return BuiltList<Task>([
            task,
          ]);
        },
        action: GetAllTaskMiddlewareTaskAction(),
        matcher: [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeTasksReducerAppAction.create(newTasks: tasks.toList()),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ],
      );
    });

    group("Test Middleware create, update, delete a task", () {
      // set up run test
      runTest(
          {required Future<BuiltList<Task>> Function(Invocation) mockAnswer,
          required Future<int> Function(Invocation) mockAnswer2,
          required action,
          required dynamic matcher}) async {
        Stream<dynamic> stream = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        when(mockAbstractRepository.createTask(task)).thenAnswer(mockAnswer2);
        when(mockAbstractRepository.updateTask(task)).thenAnswer(mockAnswer2);
        when(mockAbstractRepository.deleteTask(task)).thenAnswer(mockAnswer2);
        when(mockAbstractRepository.getAllTasks()).thenAnswer(mockAnswer);
        expect(
          await stream.toList().then((value) => value.toString()),
          matcher.toString(),
        );
      }

      // end set up run test
      test("let test create a new task", () async {
        Task task = Task((b) => b..title = "Title");
        List<Task> tasks = [
          task,
        ];
        await runTest(
          mockAnswer: (_) async {
            return BuiltList<Task>([
              task,
            ]);
          },
          mockAnswer2: (_) async {
            return 0;
          },
          action: CreateTaskMiddlewareTaskAction.create(newTask: "Title"),
          matcher: [
            ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
            ChangeTasksReducerAppAction.create(newTasks: tasks.toList()),
            ChangeStatusReducerAppAction.create(newStatus: "idle"),
          ],
        );
      });
      test("let test update a new task", () async {
        Task task = Task((b) => b..title = "Title");
        List<Task> tasks = [
          task,
        ];
        await runTest(
          mockAnswer: (_) async {
            return BuiltList<Task>([
              task,
            ]);
          },
          mockAnswer2: (_) async {
            return 0;
          },
          action: UpdateTaskMiddlewareTaskAction.create(updateTask: task),
          matcher: [
            ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
            ChangeTasksReducerAppAction.create(newTasks: tasks.toList()),
            ChangeStatusReducerAppAction.create(newStatus: "idle"),
          ],
        );
      });
      test("let test delete a new task", () async {
        Task task = Task((b) => b..title = "Title");
        List<Task> tasks = [
          task,
        ];
        await runTest(
          mockAnswer: (_) async {
            return BuiltList<Task>([
              task,
            ]);
          },
          mockAnswer2: (_) async {
            return 0;
          },
          action: DeleteTaskMiddlewareTaskAction.create(deleteTask: task),
          matcher: [
            ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
            ChangeTasksReducerAppAction.create(newTasks: tasks.toList()),
            ChangeStatusReducerAppAction.create(newStatus: "idle"),
          ],
        );
      });
    });
  });
}
