import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Firestore CRUD'),
        ),
        body: CRUDOperations(),
      ),
    );
  }
}

class CRUDOperations extends StatelessWidget {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userAgeController = TextEditingController();

  Future<void> addUser() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
      await users.add({
        'full_name': userNameController.text.trim(),
        'age': int.tryParse(userAgeController.text.trim()) ?? 0,
      });
      print("Usuário adicionado");
  }

  
  Future<void> getUser(String userId) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
      DocumentSnapshot snapshot = await users.doc(userId).get();
      if (snapshot.exists) {
        print('Dados do usuário: ${snapshot.data()}');
      } else {
        print('Usuário não encontrado!');
      }
  }

  
  Future<void> updateUser(String userId) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
      await users.doc(userId).update({
        'full_name': userNameController.text.trim(),
        'age': int.tryParse(userAgeController.text.trim()) ?? 0,
      });
      print("Usuário atualizado");
  }


  Future<void> deleteUser(String userId) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
      await users.doc(userId).delete();
      print("Usuário deletado");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: userIdController,
            decoration: InputDecoration(labelText: 'User ID'),
          ),
          TextField(
            controller: userNameController,
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          TextField(
            controller: userAgeController,
            decoration: InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: addUser,
            child: Text('Add User'),
          ),
          ElevatedButton(
            onPressed: () {
              final userId = userIdController.text.trim();
                getUser(userId);
            },
            child: Text('Get User'),
          ),
          ElevatedButton(
            onPressed: () {
              final userId = userIdController.text.trim();
                updateUser(userId);
            },
            child: Text('Update User'),
          ),
          ElevatedButton(
            onPressed: () {
              final userId = userIdController.text.trim();
                deleteUser(userId);
            },
            child: Text('Delete User'),
          ),
        ],
      ),
    );
  }
}
