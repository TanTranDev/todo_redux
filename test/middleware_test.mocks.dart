// Mocks generated by Mockito 5.0.16 from annotations
// in task_management_redux/test/middleware_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:task_management_redux/repository/task_repository.dart' as _i3;
import 'package:task_management_redux/store/actions/task_actions.dart' as _i6;
import 'package:task_management_redux/store/models/task.dart' as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeBuiltList_0<E> extends _i1.Fake implements _i2.BuiltList<E> {}

/// A class which mocks [AbstractTaskRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAbstractTaskRepository extends _i1.Mock
    implements _i3.AbstractTaskRepository {
  MockAbstractTaskRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.BuiltList<_i5.Task>> getAllTasks(
          _i6.GetAllTaskMiddlewareTaskAction? action) =>
      (super.noSuchMethod(Invocation.method(#getAllTasks, [action]),
              returnValue: Future<_i2.BuiltList<_i5.Task>>.value(
                  _FakeBuiltList_0<_i5.Task>()))
          as _i4.Future<_i2.BuiltList<_i5.Task>>);
  @override
  _i4.Future<int> createTask(_i6.CreateTaskMiddlewareTaskAction? action) =>
      (super.noSuchMethod(Invocation.method(#createTask, [action]),
          returnValue: Future<int>.value(0)) as _i4.Future<int>);
  @override
  _i4.Future<int> deleteTask(_i6.DeleteTaskMiddlewareTaskAction? action) =>
      (super.noSuchMethod(Invocation.method(#deleteTask, [action]),
          returnValue: Future<int>.value(0)) as _i4.Future<int>);
  @override
  _i4.Future<int> updateTask(_i6.UpdateTaskMiddlewareTaskAction? action) =>
      (super.noSuchMethod(Invocation.method(#updateTask, [action]),
          returnValue: Future<int>.value(0)) as _i4.Future<int>);
  @override
  String toString() => super.toString();
}
