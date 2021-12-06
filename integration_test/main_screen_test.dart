import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:task_management_redux/main.dart' as app;

void main() async {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  group("Test Main Screen Integration", () {
    testWidgets("Test Main Screen add a new task", (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final Finder openAddTaskButton =
          find.byKey(const Key("Button show add task"));
      final Finder textFieldAddTask = find.byKey(const Key("TextField"));
      final Finder addTaskButton = find.byKey(const Key("Button create"));

      await tester.tap(openAddTaskButton);

      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.enterText(textFieldAddTask, "test content");
      await tester.tap(addTaskButton);

      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(
          find.byWidgetPredicate((widget) =>
              widget is ListTile &&
              widget.title is Text &&
              (widget.title as Text).data!.startsWith('test content')),
          findsOneWidget);

      await tester.pumpAndSettle(const Duration(seconds: 1));
    });

    testWidgets("Test Main Screen update task", (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final Finder theTask = find.byWidgetPredicate((widget) =>
          widget is ListTile &&
          widget.title is Text &&
          (widget.title as Text).data!.contains("test content"));

      final Finder theCheckBox = find.descendant(
          of: theTask,
          matching: find.byKey(const Key("check box of the task")));

      await tester.tap(theCheckBox);

      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.pump();

      final Finder theDoneCheckBox = find.byWidgetPredicate(
          (widget) => widget is Checkbox && widget.value == true);

      final Finder theNewCheckBox =
          find.descendant(of: theTask, matching: theDoneCheckBox);
      // expect(
      //   theCheckBox,
      //   isA<Checkbox>().having((t) => t.value, "isTrue", false),
      // );
      expect(theNewCheckBox, findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 1));
    });

    testWidgets("Test Main Screen delete task", (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      final Finder theTask = find.byWidgetPredicate((widget) =>
          widget is ListTile &&
          widget.title is Text &&
          (widget.title as Text).data!.contains("test content"));


      await tester.longPress(theTask);

      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.pump();

      expect(theTask, findsNothing);
      await tester.pumpAndSettle(const Duration(seconds: 1));
    });
  });
}
