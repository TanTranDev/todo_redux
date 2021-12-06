import 'package:task_management_redux/store/actions/action.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:redux/redux.dart';

final Reducer<AppState> appStateReducer = combineReducers<AppState>([
  TypedReducer<AppState, DoChangeStatusAppActionReducer>(
      _reducerChangeStatusAppState),
  TypedReducer<AppState, DoChangeTasksAppActionReducer>(
      _reducerChangeTasksAppState),
]);

AppState _reducerChangeStatusAppState(
    AppState state, DoChangeStatusAppActionReducer action) {
  return state.rebuild((p0) => p0..status = action.status);
}

AppState _reducerChangeTasksAppState(
    AppState state, DoChangeTasksAppActionReducer action) {
  return state.rebuild((p0) => p0..tasks = action.tasks);
}
