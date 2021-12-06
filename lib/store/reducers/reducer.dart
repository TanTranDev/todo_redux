import 'package:task_management_redux/store/actions/app_actions.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:redux/redux.dart';

final Reducer<AppState> appStateReducer = combineReducers<AppState>([
  TypedReducer<AppState, ChangeStatusReducerAppAction>(
      _reducerChangeStatusAppState),
  TypedReducer<AppState, ChangeTasksReducerAppAction>(
      _reducerChangeTasksAppState),
]);

AppState _reducerChangeStatusAppState(
    AppState state, ChangeStatusReducerAppAction action) {
  return state.rebuild((p0) => p0..status = action.status);
}

AppState _reducerChangeTasksAppState(
    AppState state, ChangeTasksReducerAppAction action) {
  return state.rebuild((p0) => p0..tasks = action.tasks);
}
