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
updateTask(int id,String title,String status){
if(taskList[id]==id){
  status='done';
}
}
  }
}
void main(){
  TaskManager taskManager=TaskManager();
  taskManager.addNewTask( 'Farhan', "Farhan", 'Pending', DateTime.now());
}
