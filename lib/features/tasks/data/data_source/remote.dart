import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/exception/exception.dart';
import '../models/task.dart';

abstract class TaskRemoteDataSource {
  Future<List<TaskModel>> getTasks();

  factory TaskRemoteDataSource() => _TaskRemoteDataSourceImpl();
}

class _TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  @override
  Future<List<TaskModel>> getTasks() async {
    try {
      final collection =
          await FirebaseFirestore.instance.collection('tasks').get();

      final tasks = collection.docs
          .map((item) => TaskModel.fromJson(item.data(), item.id))
          .toList();

      return tasks;
    } catch (error) {
      print(error);
      throw ServerException(message: 'Xatolik yuz berdi!', code: 500);
    }
  }
}
