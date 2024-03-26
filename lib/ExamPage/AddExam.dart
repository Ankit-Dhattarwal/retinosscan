import 'package:flutter/material.dart';

import 'VibuSubramanium.dart';
import 'examPage.dart';

class AddExam extends StatelessWidget {
  const AddExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const ExamPage()));
            },
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 60.0),
          child: Center(child: Text('AddExam', style: TextStyle(color: Colors.white))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Patient',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'MRN',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.cloud_outlined),
                ),
              ),
              const SizedBox(height: 10),
              buildInputField('First Name'),
              const SizedBox(height: 10),
              buildInputField('Last Name'),
              const SizedBox(height: 10),
              buildInputField('Date of Birth'),
              const SizedBox(height: 10),
              buildInputField('Gender'),
              const SizedBox(height: 30),
              const Text(
                'Exam Code',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              buildInputField('Exam Code'),
              const SizedBox(height: 20),
              const Text(
                'Prescribling Doctor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
            TextFormField(
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: '',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.arrow_forward_ios),
              ),
            ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => VibuSub()));
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                ),
                  child: const Text('Add', style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String labelText) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

