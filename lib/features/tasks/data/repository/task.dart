import '../data_source/remote.dart';
import '../models/task.dart';

class TaskRepository {
  final TaskRemoteDataSource taskRemoteDataSource;

  TaskRepository({required this.taskRemoteDataSource});
  Future<List<TaskModel>> getTasks()async {

    return taskRemoteDataSource.getTasks();



    
    // return (data['tasks']as List).map((e) => TaskModel.fromJson(e)).toList();

  }
  
}