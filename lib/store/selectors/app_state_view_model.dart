import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/models/task.dart';
import 'package:redux/redux.dart';

class AppStateViewModel {
  final String status;
  final List<Task> tasks;
  final Function({required dynamic action}) doAction;

  AppStateViewModel({
    required this.status,
    required this.tasks,
    required this.doAction,
  });

  factory AppStateViewModel.create(Store<AppState> store) {
    onDoAction({required dynamic action}) {
      store.dispatch(action);
    }

    return AppStateViewModel(
        status: store.state.status,
        tasks: store.state.tasks ?? [],
        doAction: onDoAction);
  }
}
