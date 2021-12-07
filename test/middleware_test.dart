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
void main() async {
  // create dumb data
  final dumbTask = Task((b) => b..title = "Title");
  // begin test all epics middleware success
  group("Test Middleware Success", () {
    MockAbstractTaskRepository mockAbstractTaskRepository;
    AppMiddleware appMiddleware;
    Store<AppState> store;
    //begin test Middleware get all task
    group("Test Middleware Get All Tasks", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = GetAllTaskMiddlewareTaskAction();
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much get all tasks from local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        when(mockAbstractTaskRepository
                .getAllTasks(GetAllTaskMiddlewareTaskAction()))
            .thenAnswer(mockAnswer);
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeTasksReducerAppAction.create(
              newTasks: BuiltList<Task>([
            dumbTask,
          ])),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
    //begin test Middleware add a new task
    group("Test Middleware Add A New Task", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = CreateTaskMiddlewareTaskAction.create(newTask: dumbTask.title!);
      Future<int> Function(Invocation) mockAnswerInt;
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much create a new task to local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        mockAnswerInt = (_) async {
          return 0;
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        when(mockAbstractTaskRepository
                .getAllTasks(GetAllTaskMiddlewareTaskAction()))
            .thenAnswer(mockAnswer);
        when(mockAbstractTaskRepository.createTask(
                CreateTaskMiddlewareTaskAction.create(
                    newTask: dumbTask.title!)))
            .thenAnswer(mockAnswerInt);
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeTasksReducerAppAction.create(
              newTasks: BuiltList<Task>([
            dumbTask,
          ])),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
    //begin test Middleware delete a task
    group("Test Middleware Delete A Task", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = DeleteTaskMiddlewareTaskAction.create(deleteTask: dumbTask);
      Future<int> Function(Invocation) mockAnswerInt;
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much delete a task from local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        mockAnswerInt = (_) async {
          return 0;
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        when(mockAbstractTaskRepository
                .getAllTasks(GetAllTaskMiddlewareTaskAction()))
            .thenAnswer(mockAnswer);
        when(mockAbstractTaskRepository.deleteTask(
                DeleteTaskMiddlewareTaskAction.create(deleteTask: dumbTask)))
            .thenAnswer(mockAnswerInt);
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeTasksReducerAppAction.create(
              newTasks: BuiltList<Task>([
            dumbTask,
          ])),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
    //begin test Middleware update a task
    group("Test Middleware Update A Task", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = UpdateTaskMiddlewareTaskAction.create(updateTask: dumbTask);
      Future<int> Function(Invocation) mockAnswerInt;
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much update a task in local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        mockAnswerInt = (_) async {
          return 0;
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        when(mockAbstractTaskRepository
                .getAllTasks(GetAllTaskMiddlewareTaskAction()))
            .thenAnswer(mockAnswer);
        when(mockAbstractTaskRepository.updateTask(
                UpdateTaskMiddlewareTaskAction.create(updateTask: dumbTask)))
            .thenAnswer(mockAnswerInt);
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeTasksReducerAppAction.create(
              newTasks: BuiltList<Task>([
            dumbTask,
          ])),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
  });
  // begin test all epics middleware error
  group("Test Middleware Error", () {
    MockAbstractTaskRepository mockAbstractTaskRepository;
    AppMiddleware appMiddleware;
    Store<AppState> store;
    //begin test Middleware get all task - error
    group("Test Middleware Get All Tasks - Error", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = GetAllTaskMiddlewareTaskAction();
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much get all tasks from local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        // no response or response error make to skip try and go to catch
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeStatusReducerAppAction.create(newStatus: "error"),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
    //begin test Middleware create a new task - error
    group("Test Middleware Add A New Task - Error", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = CreateTaskMiddlewareTaskAction.create(newTask: dumbTask.title!);
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much create a new task to local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        // no response or response error make to skip try and go to catch
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeStatusReducerAppAction.create(newStatus: "error"),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
    //begin test Middleware delete a task - error
    group("Test Middleware Delete A Task - Error", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = DeleteTaskMiddlewareTaskAction.create(deleteTask: dumbTask);
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much delete a task from local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        // no response or response error make to skip try and go to catch
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeStatusReducerAppAction.create(newStatus: "error"),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
    //begin test Middleware update a task - error
    group("Test Middleware Update A Task - Error", () {
      AppState firstState;
      TaskAction action;
      // Set up
      mockAbstractTaskRepository = MockAbstractTaskRepository();
      firstState = AppState();
      appMiddleware = AppMiddleware(mockAbstractTaskRepository);
      action = UpdateTaskMiddlewareTaskAction.create(updateTask: dumbTask);
      Future<BuiltList<Task>> Function(Invocation) mockAnswer;
      List matcher;

      store = Store<AppState>(
        appStateReducer,
        initialState: firstState,
        middleware: [EpicMiddleware<AppState>(appMiddleware)],
      );
      // begin test
      test("Much update a task in local database", () async {
        // create mockAnswer
        mockAnswer = (_) async {
          return BuiltList<Task>([
            dumbTask,
          ]);
        };
        // run Epics Stream
        Stream<dynamic> streamActually = appMiddleware.call(
          Stream.fromIterable([action]).asBroadcastStream(),
          EpicStore<AppState>(
            store,
          ),
        );
        // when interaction with non-dispatch action
        // no response or response error make to skip try and go to catch
        // create expect matcher
        matcher = [
          ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
          ChangeStatusReducerAppAction.create(newStatus: "error"),
          ChangeStatusReducerAppAction.create(newStatus: "idle"),
        ];
        // expect result
        expect(await streamActually.toList(), matcher);
      });
    });
  });
}

// THE HARD WAY BUT CAN MAKE A LOOP TO REDUCE CODE LINE
// void main() {
//   MockAbstractTaskRepository mockAbstractTaskRepository =
//       MockAbstractTaskRepository();
//   AppState firstState = AppState();
//   AppMiddleware appMiddleware = AppMiddleware(mockAbstractTaskRepository);
//   final store = Store<AppState>(appStateReducer,
//       initialState: firstState,
//       middleware: [EpicMiddleware<AppState>(appMiddleware)]);
//   Task task = Task((b) => b..title = "Title");
//   group("Test middleware get all tasks", () {
//     // set up run test
//     runTest(
//         {required Future<BuiltList<Task>> Function(Invocation) mockAnswer,
//         required action,
//         required dynamic matcher}) async {
//       Stream<dynamic> stream = appMiddleware.call(
//         Stream.fromIterable([action]).asBroadcastStream(),
//         EpicStore<AppState>(
//           store,
//         ),
//       );
//       when(mockAbstractTaskRepository
//               .getAllTasks(GetAllTaskMiddlewareTaskAction()))
//           .thenAnswer(mockAnswer);
//       expect(
//         await stream.toList(),
//         matcher,
//       );
//     }
//     // end set up run test
//
//     test("let test get all tasks", () async {
//       Task task = Task((b) => b..title = "Title");
//       List<Task> tasks = [
//         task,
//       ];
//       await runTest(
//         mockAnswer: (_) async {
//           return BuiltList<Task>([
//             task,
//           ]);
//         },
//         action: GetAllTaskMiddlewareTaskAction(),
//         matcher: [
//           ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
//           ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
//           ChangeStatusReducerAppAction.create(newStatus: "idle"),
//         ],
//       );
//     });
//
//     group("Test Middleware create, update, delete a task", () {
//       // set up run test
//       runTest(
//           {required Future<BuiltList<Task>> Function(Invocation) mockAnswer,
//           required Future<int> Function(Invocation) mockAnswerInt,
//           required action,
//           required dynamic matcher}) async {
//         Stream<dynamic> stream = appMiddleware.call(
//           Stream.fromIterable([action]).asBroadcastStream(),
//           EpicStore<AppState>(
//             store,
//           ),
//         );
//         when(mockAbstractTaskRepository.createTask(
//                 CreateTaskMiddlewareTaskAction.create(newTask: task.title!)))
//             .thenAnswer(mockAnswerInt);
//         when(mockAbstractTaskRepository.updateTask(
//                 UpdateTaskMiddlewareTaskAction.create(updateTask: task)))
//             .thenAnswer(mockAnswerInt);
//         when(mockAbstractTaskRepository.deleteTask(
//                 DeleteTaskMiddlewareTaskAction.create(deleteTask: task)))
//             .thenAnswer(mockAnswerInt);
//         when(mockAbstractTaskRepository
//                 .getAllTasks(GetAllTaskMiddlewareTaskAction()))
//             .thenAnswer(mockAnswer);
//         expect(
//           await stream.toList().then((value) => value.toString()),
//           matcher.toString(),
//         );
//       }
//
//       // end set up run test
//       test("let test create a new task", () async {
//         Task task = Task((b) => b..title = "Title");
//         List<Task> tasks = [
//           task,
//         ];
//         await runTest(
//           mockAnswer: (_) async {
//             return BuiltList<Task>([
//               task,
//             ]);
//           },
//           mockAnswerInt: (_) async {
//             return 0;
//           },
//           action: CreateTaskMiddlewareTaskAction.create(newTask: "Title"),
//           matcher: [
//             ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
//             ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
//             ChangeStatusReducerAppAction.create(newStatus: "idle"),
//           ],
//         );
//       });
//       test("let test update a new task", () async {
//         Task task = Task((b) => b..title = "Title");
//         List<Task> tasks = [
//           task,
//         ];
//         await runTest(
//           mockAnswer: (_) async {
//             return BuiltList<Task>([
//               task,
//             ]);
//           },
//           mockAnswerInt: (_) async {
//             return 0;
//           },
//           action: UpdateTaskMiddlewareTaskAction.create(updateTask: task),
//           matcher: [
//             ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
//             ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
//             ChangeStatusReducerAppAction.create(newStatus: "idle"),
//           ],
//         );
//       });
//       test("let test delete a new task", () async {
//         Task task = Task((b) => b..title = "Title");
//         List<Task> tasks = [
//           task,
//         ];
//         await runTest(
//           mockAnswer: (_) async {
//             return BuiltList<Task>([
//               task,
//             ]);
//           },
//           mockAnswerInt: (_) async {
//             return 0;
//           },
//           action: DeleteTaskMiddlewareTaskAction.create(deleteTask: task),
//           matcher: [
//             ChangeStatusReducerAppAction.create(newStatus: "isLoading"),
//             ChangeTasksReducerAppAction.create(newTasks: tasks.toBuiltList()),
//             ChangeStatusReducerAppAction.create(newStatus: "idle"),
//           ],
//         );
//       });
//     });
//   });
// }
