import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:task_management_redux/store/models/task.dart';

part 'app_state.g.dart';

abstract class AbstractAppState {}

abstract class AppState
    implements Built<AppState, AppStateBuilder>, AbstractAppState {
  int get pageID;
  List<Task>? get tasks;
  String get status;
  AppState._();
  static Serializer<AppState> get serializer => _$appStateSerializer;
  static void _initializeBuilder(AppStateBuilder builder) {
    builder.pageID = 1;
    builder.tasks = [];
    builder.status = "idle";
  }

  factory AppState([void Function(AppStateBuilder)? updates]) = _$AppState;
}
