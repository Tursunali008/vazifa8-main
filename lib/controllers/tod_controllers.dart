import 'package:flutter/material.dart';
import 'package:vazifa8/models/todo_models.dart';

class ToDoController with ChangeNotifier {
  final List<ToDo> _list = [
    ToDo(
        id: "1",
        title: "Kino",
        description: "Kino korish",
        dates: DateTime(2024, 6, 15),
        isDone: true),
    ToDo(
        id: "2",
        title: "Vazifa",
        description: "Vazifa qilish",
        dates: DateTime(2024, 4, 15),
        isDone: true),
    ToDo(
        id: "3",
        title: "Dars",
        description: "Darsga borish kerak",
        dates: DateTime.now(),
        isDone: true),
  ];

  List<ToDo> get list {
    return [..._list];
  }

  void todoAdd(String id, String title, String description, DateTime dates) {
    _list.add(
        ToDo(id: id, title: title, description: description, dates: dates));
    notifyListeners();
  }

  void todoRemove(int index) {
    _list.removeAt(index);
    notifyListeners();
  }

  void todoEdit(
      int index, String newTitle, String newDescription, DateTime newDates) {
    _list[index].title = newTitle;
    _list[index].description = newDescription;
    _list[index].dates = newDates;
    notifyListeners();
  }
}
