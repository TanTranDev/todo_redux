import 'package:built_collection/built_collection.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/models/task.dart';
import 'package:redux/redux.dart';
import 'package:built_value/built_value.dart';

part 'app_state_view_model.g.dart';

abstract class ViewModel {}

abstract class AppStateViewModel
    implements Built<AppStateViewModel, AppStateViewModelBuilder>, ViewModel {
  AppStateViewModel._();
  BuiltList<Task> get tasks;
  String get status;
  Function({required dynamic action}) get dispatch;
  factory AppStateViewModel.create({required Store<AppState> store}) =>
      AppStateViewModel((update) => update
        ..status = store.state.status
        ..tasks = store.state.tasks.toBuilder()
        ..dispatch = ({required dynamic action}) {
          store.dispatch(action);
        });
  factory AppStateViewModel([void Function(AppStateViewModelBuilder) updates]) =
      _$AppStateViewModel;
}
