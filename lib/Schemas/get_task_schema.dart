class GetTaskSchema {
  static String getTaskJson = """
  query {
  getTodos(status : "", search : "") {
    id
    task
    timeAdded
  }
}
  """;
}
