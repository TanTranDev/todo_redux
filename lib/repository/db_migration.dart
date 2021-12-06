import 'package:task_management_redux/repository/init_db.dart';

class DbMigrator {
  static final Map<int, String> migrations = {
    1: initDbScript,
    // 2: "SQL script to add new column...",
    // 3: "SQL script to update existing column and update data as well....",
  };
}
