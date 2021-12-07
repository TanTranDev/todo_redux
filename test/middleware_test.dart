import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:task_management_redux/repository/task_repository.dart';
import 'package:task_management_redux/store/actions/task_actions.dart';
import 'package:task_management_redux/store/actions/app_actions.dart';
import 'package:task_management_redux/store/epics/epics.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/models/task.dart';
import 'package:redux/redux.dart';
import 'package:task_management_redux/store/reducers/reducer.dart';
import 'middleware_test.mocks.dart';

@GenerateMocks([AbstractTaskRepository])
void main() {
  MockAbstractTaskRepository mockAbstractTaskRepository =
      MockAbstractTaskRepository();
  AppState firstState = AppState();
  AppMiddleware appMiddleware = AppMiddleware(mockAbstractTaskRepository);
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
      when(mockAbstractTaskRepository
              .getAllTasks(GetAllTaskMiddlewareTaskAction()))
          .thenAnswer(mockAnswer);
      expect(
        await stream.toList(),
        matcher,
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
          ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ],
      );
    });

    group("Test Middleware create, update, delete a task", () {
      // set up run test
      runTest(
          {required Future<BuiltList<Task>> Function(Invocation) mockAnswer,
          required Future<int> Function(Invocation) mockAnswerInt,
          required action,
          required dynamic matcher}) async {
        Stream<dynamic> stream = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        when(mockAbstractTaskRepository.createTask(
                CreateTaskMiddlewareTaskAction.create(newTask: task.title!)))
            .thenAnswer(mockAnswerInt);
        when(mockAbstractTaskRepository.updateTask(
                UpdateTaskMiddlewareTaskAction.create(updateTask: task)))
            .thenAnswer(mockAnswerInt);
        when(mockAbstractTaskRepository.deleteTask(
                DeleteTaskMiddlewareTaskAction.create(deleteTask: task)))
            .thenAnswer(mockAnswerInt);
        when(mockAbstractTaskRepository
                .getAllTasks(GetAllTaskMiddlewareTaskAction()))
            .thenAnswer(mockAnswer);
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
          mockAnswerInt: (_) async {
            return 0;
          },
          action: CreateTaskMiddlewareTaskAction.create(newTask: "Title"),
          matcher: [
            ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
            ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
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
          mockAnswerInt: (_) async {
            return 0;
          },
          action: UpdateTaskMiddlewareTaskAction.create(updateTask: task),
          matcher: [
            ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
            ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
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
          mockAnswerInt: (_) async {
            return 0;
          },
          action: DeleteTaskMiddlewareTaskAction.create(deleteTask: task),
          matcher: [
            ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
            ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
            ChangeStatusReducerAppAction.create(newStatus: "idle"),
          ],
        );
      });
    });
  });
}
