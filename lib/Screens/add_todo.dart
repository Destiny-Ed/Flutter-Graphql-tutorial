import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController _task = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Todo'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text('Add your first todo'),
                  ),

                  ///Add todo task input field
                  TextFormField(
                    controller: _task,
                    decoration: const InputDecoration(
                      labelText: 'Todo Task',
                    ),
                  ),

                  ///Add task button
                  GestureDetector(
                    onTap: () {
                      ///Add task button
                     
                    },
                    child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text('Save Task')),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
