import 'package:flutter/material.dart';
import 'package:ex3/archive.dart';

class Home extends StatelessWidget {
  static final ValueNotifier<List<Map<String, dynamic>>> tasksNotifier =
      ValueNotifier([]);

  const Home({super.key});

  void _addNewTask(BuildContext context, ValueNotifier<List<Map<String, dynamic>>> tasksNotifier) {
    TextEditingController taskController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add new task"),
          content: TextField(
            controller: taskController,
            decoration: InputDecoration(hintText: "Title"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                if (taskController.text.isNotEmpty) {
                  final List<Map<String, dynamic>> tasks = [...tasksNotifier.value];
                  tasks.add({
                    "id": DateTime.now().toString(),
                    "title": taskController.text,
                    "isDone": false
                  });
                  tasksNotifier.value = tasks;
                }
                Navigator.of(context).pop();
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  }

  void _finishTask(String updatedTaskId) {
    final List<Map<String, dynamic>> tasks = [...tasksNotifier.value];

    final int index = tasks.indexWhere((task) => task['id'] == updatedTaskId);
    tasks[index]['isDone'] = true;

    tasksNotifier.value = tasks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BRADEMO - Ex3'),
        backgroundColor: Colors.blue,
      ),
      body: ValueListenableBuilder<List<Map<String, dynamic>>>(
        valueListenable: Home.tasksNotifier,
        builder: (_, tasks, __) {
          final uncompletedTasks =
              tasks.where((task) => task['isDone'] == false).toList();

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const Archive(),
                      ));
                    },
                    child: const Text('View Completed Tasks')),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'You have ${uncompletedTasks.length} uncompleted tasks',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: uncompletedTasks.length,
                    itemBuilder: (_, index) => Card(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        elevation: 5,
                        color: Colors.amberAccent,
                        child: ListTile(
                          title: Text(uncompletedTasks[index]['title']),
                          trailing: IconButton(
                            icon: const Icon(Icons.check_box_outline_blank),
                            onPressed: () =>
                                _finishTask(uncompletedTasks[index]['id']),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewTask(context, Home.tasksNotifier),
        child: const Icon(Icons.add),
      ),
    );
  }
}