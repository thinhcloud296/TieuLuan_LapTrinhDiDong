import 'package:flutter/material.dart';
import 'package:ltdd_tieuluan/views/widgets/dialog_widget.dart';

class IbmPage extends StatefulWidget {
  const IbmPage({super.key});

  @override
  State<IbmPage> createState() => _IbmPageState();
}

class _IbmPageState extends State<IbmPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _idController = TextEditingController();
  final _birthdayController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  String _gender = 'Nam';
  DateTime _selectedDate = DateTime.now();
  String _bmiResult = '';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _birthdayController.text =
            '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}';
      });
    }
  }

  void _calculateBMI() {
    double height = double.tryParse(_heightController.text) ?? 0;
    double weight = double.tryParse(_weightController.text) ?? 0;

    if (height > 0 && weight > 0) {
      double bmi = weight / ((height / 100) * (height / 100));
      setState(() {
        if (bmi < 18.5) {
          _bmiResult = 'Gầy';
        } else if (bmi >= 18.5 && bmi <= 24.9) {
          _bmiResult = 'Bình thường';
        } else {
          _bmiResult = 'Thừa cân';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Caculate'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _gender,
                decoration: const InputDecoration(
                  labelText: 'Giới tính',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.transgender),
                ),
                items:
                    ['Nam', 'Nữ', 'Khác'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _gender = newValue!;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _birthdayController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Ngày sinh',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () => _selectDate(context),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _heightController,
                decoration: const InputDecoration(
                  labelText: 'Chiều cao (cm)',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập chiều cao';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _weightController,
                decoration: const InputDecoration(
                  labelText: 'Cân nặng (kg)',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.monitor_weight),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập cân nặng';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _calculateBMI();
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Tính BMI'),
              ),
              const SizedBox(height: 16),
              if (_bmiResult.isNotEmpty)
                Text(
                  'Kết quả BMI: $_bmiResult',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
