class Task {
  String name;
  bool isDone;

  Task({
    required this.name,
    this.isDone = false,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'isDone': isDone,
  };

  static Task fromJson(Map<String, dynamic> json) => Task(
    name: json['name'] as String,
    isDone: json['isDone'] as bool? ?? false,
  );
}
