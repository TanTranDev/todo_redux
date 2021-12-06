import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:task_management_redux/repository/repository.dart';
import 'package:task_management_redux/store/models/task.dart';

import 'middleware_test.mocks.dart';

@GenerateMocks([AbstractRepository])
void main() {
  group("Test Middleware", () {
    test("Test get all Tasks", () async {
      final mockAbstractRepository = MockAbstractRepository();
      when(mockAbstractRepository.getAllTasks())
          .thenAnswer((realInvocation) async => BuiltList<Task>([
                Task((b) => b..title = "Title"),
              ]));
      expect(
          await mockAbstractRepository.getAllTasks(),
          BuiltList<Task>([
            Task((b) => b..title = "Title"),
          ]));
    });
    test("Test create Task", () async {
      final mockAbstractRepository = MockAbstractRepository();
      when(mockAbstractRepository
              .createTask(Task((b) => b..title = "New Task")))
          .thenAnswer((realInvocation) async => 0);
      expect(
          await mockAbstractRepository
              .createTask(Task((b) => b..title = "New Task")),
          0);
    });
    test("Test update Task", () async {
      final mockAbstractRepository = MockAbstractRepository();
      when(mockAbstractRepository
              .updateTask(Task((b) => b..title = "New Task")))
          .thenAnswer((realInvocation) async => 0);
      expect(
          await mockAbstractRepository
              .updateTask(Task((b) => b..title = "New Task")),
          0);
    });
    test("Test delete Task", () async {
      final mockAbstractRepository = MockAbstractRepository();
      when(mockAbstractRepository
              .deleteTask(Task((b) => b..title = "New Task")))
          .thenAnswer((realInvocation) async => 0);
      expect(
          await mockAbstractRepository
              .deleteTask(Task((b) => b..title = "New Task")),
          0);
    });
  });
}
