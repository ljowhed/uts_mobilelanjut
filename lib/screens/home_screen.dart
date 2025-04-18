import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart'; // Pastikan ini diimpor
import 'result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  DateTime? _selectedDate;

  void _pickDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  void _submit() {
    if (_nameController.text.isNotEmpty && _nimController.text.isNotEmpty && _selectedDate != null) {
      final provider = Provider.of<UserProvider>(context, listen: false);
      provider.setUser(_nameController.text, _nimController.text, _selectedDate!);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const ResultScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Harap isi nama, NIM, dan tanggal lahir!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RAMAL APP')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _nimController,
              decoration: const InputDecoration(labelText: 'NIM'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _pickDate(context),
              child: AbsorbPointer(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: _selectedDate == null
                        ? 'Tanggal Lahir'
                        : '${_selectedDate!.day}-${_selectedDate!.month}-${_selectedDate!.year}',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Ramal'),
            ),
          ],
        ),
      ),
    );
  }
}
