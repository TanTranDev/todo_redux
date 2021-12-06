import 'package:task_management_redux/store/actions/action.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:redux/redux.dart';

final Reducer<AppState> appStateReducer = combineReducers<AppState>([
  TypedReducer<AppState, DoChangeStatus>(reducerChangeStatus),
  TypedReducer<AppState, DoChangeTasks>(reducerChangeTasks),
]);

AppState reducerChangeStatus(AppState state, DoChangeStatus action) {
  return state.rebuild((p0) => p0..status = action.status);
}

AppState reducerChangeTasks(AppState state, DoChangeTasks action) {
  return state.rebuild((p0) => p0..tasks = action.tasks);
}
