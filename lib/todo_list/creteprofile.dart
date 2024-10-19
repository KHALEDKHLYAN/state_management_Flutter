// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

// Define the Profile class
class Profile {
  final String name;
  final String id;

  Profile({required this.name, required this.id});
}

// Define the DataStore class with placeholder methods
class DataStore {
  Future<bool> profileExistsWithName(String name) async {
    // Placeholder: Simulate that profile does not exist
    return false;
  }

  Future<void> createProfile(Profile profile) async {
    // Placeholder: Simulate profile creation
    print('Profile created: ${profile.name}, ID: ${profile.id}');
  }
}

class CreteprofileBasic extends StatefulWidget {
  const CreteprofileBasic({super.key, this.dataStore});
  final DataStore? dataStore;

  @override
  State<CreteprofileBasic> createState() => _CreteprofileBasicState();
}

class _CreteprofileBasicState extends State<CreteprofileBasic> {
  final _controller = TextEditingController();
  bool _isLoading = false;
  String? _errorText;

  Future<void> _submit(String name) async {
    // 1
    if (name.isEmpty) {
      setState(() => _errorText = 'Name can\'t be empty');
      return;
    }
    // 2
    final nameExists = await widget.dataStore?.profileExistsWithName(name);
    if (nameExists == true) {
      setState(() => _errorText = 'Name already taken');
      return;
    }
    // 3
    final id = Uuid().v1();
    setState(() => _isLoading = true);
    try {
      // 4
      await widget.dataStore?.createProfile(Profile(name: name, id: id));
      setState(() {
        _isLoading = false;
        _errorText = null;
      });
    } catch (e) {
      // 5
      setState(() => _errorText = e.toString());
      return;
    }
    // 6
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Profile'),
        actions: [
          ElevatedButton(
            onPressed: _isLoading ? null : () => _submit(_controller.value.text),
            child: const Text('Save'),
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: TextField(
          controller: _controller,
          autocorrect: false,
          decoration: InputDecoration(
            errorText: _errorText,
            hintText: 'Profile name',
          ),
          onSubmitted: _isLoading ? (_) {} : (name) => _submit(name),
        ),
      ),
    );
  }
}
