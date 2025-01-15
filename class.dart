class Task{
  int id;
  String title;
  String description;
  String status;
  DateTime dueDate;

  Task({required this.id,required this.title,required this.description,required this.status,required this.dueDate});
}

class TaskManager{
  List<Task> taskList=[];

  addNewTask(String title,String description,String status,DateTime dueDate){
    int id= taskList.length+1;
    taskList.add(Task(id: id, title: title, description: description, status: status, dueDate: dueDate));
    print('Title added: $title');
  }

  updateTask(int id,String title,String status){
    if(taskList[id].id == id){
      taskList[id].status = 'done';
    }
    print('Task updated: $title');
  }

  deleteTask(int id){
    if(taskList[id].id == id){
      taskList.removeAt(id);
      print('Task deleted: $id');
    }
  }

  showTaskStatus(){
    for(int i=0;i<taskList.length;i++){
      print('Task: ${taskList[i].title} Status: ${taskList[i].status}');
    }
  }
}

void main(){
  TaskManager taskManager=TaskManager();
  taskManager.addNewTask( 'Farhan', "Farhan", 'Pending', DateTime.now());
  taskManager.addNewTask( 'Antu', "Farhan", 'Pending', DateTime.now());
  taskManager.updateTask(1, 'Farhan', 'done');
  taskManager.deleteTask(1);
  taskManager.showTaskStatus();
}