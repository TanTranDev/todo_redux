const String initDbScript = """
  CREATE TABLE Task (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      isDone BOOLEAN NOT NULL
    );
  """;
