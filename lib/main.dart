import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:task_management_redux/repository/repository.dart';
import 'package:redux/redux.dart';
import 'package:task_management_redux/store/actions/action.dart';
import 'package:task_management_redux/store/epics/epics.dart';
import 'package:task_management_redux/store/models/app_state.dart';
import 'package:task_management_redux/store/reducers/reducer.dart';
import 'package:task_management_redux/store/selectors/app_state_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final repository = Repository();
  final store = Store<AppState>(appStateReducer,
      initialState: AppState(),
      middleware: [EpicMiddleware<AppState>(AppMiddleware(repository))]);
  runApp(TodoApp(
    store: store,
  ));
}

class TodoApp extends StatelessWidget {
  final Store<AppState> store;
  const TodoApp({required this.store, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        home: StoreConnector<AppState, AppStateViewModel>(
            distinct: true,
            converter: (Store<AppState> store) =>
                AppStateViewModel.create(store),
            onInitialBuild: (viewModel) {
              viewModel.doAction(action: DoGetAllTask());
            },
            builder: (context, viewModel) {
              final tasks = viewModel.tasks;
              final status = viewModel.status;
              return Scaffold(
                appBar: AppBar(
                  title: const Text("Todo App"),
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: status == "idle"
                            ? ListView.builder(
                                itemCount: tasks.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(tasks[index].title ?? ""),
                                    trailing: Checkbox(
                                      key: const Key("check box of the task"),
                                        value: tasks[index].isDone == 1
                                            ? true
                                            : false,
                                        onChanged: (bool? value) {
                                          viewModel.doAction(
                                            action: DoUpdateTask.create(
                                                updateTask: tasks[index]),
                                          );
                                        }),
                                    onLongPress: () {
                                      viewModel.doAction(
                                        action: DoDeleteTask.create(
                                            deleteTask: tasks[index]),
                                      );
                                    },
                                  );
                                },
                              )
                            : const CircularProgressIndicator(),
                      ),
                      const ButtonShowAddTask(),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class ButtonShowAddTask extends StatelessWidget {
  const ButtonShowAddTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key("Button show add task"),
      onTap: () {
        showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) {
              return const FormFieldWidget();
            });
      },
      child: Container(
        width: double.infinity,
        height: 50,
        color: Colors.blueAccent,
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class FormFieldWidget extends StatefulWidget {
  const FormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppStateViewModel>(
        distinct: true,
        converter: (Store<AppState> store) => AppStateViewModel.create(store),
        onInitialBuild: (viewModel) {},
        builder: (context, viewModel) {
          return AlertDialog(
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    key: const Key("TextField"),
                    onChanged: (newValue) {
                      value = newValue;
                    },
                    cursorColor: Colors.lightBlueAccent,
                    autofocus: true,
                    maxLines: 5,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  GestureDetector(
                    key: const Key("Button create"),
                    onTap: () async {
                      viewModel.doAction(
                          action: DoCreateTask.create(newTask: value));
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
