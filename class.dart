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
  addNewTask(int id,String title,String description,String status,DateTime dueDate){
    int id= taskList.length+1;
    taskList.add(Task(id: id, title: title, description: description, status: status, dueDate: dueDate));
print('Title added: $title');
  }
}
void main(){
  TaskManager taskManager=TaskManager();
  taskManager.addNewTask(101, 'Farhan', "Farhan", 'Pending', DateTime.now());
}
