import 'package:flutter/material.dart';

const List<String> list = <String>['Sorong', 'Two', 'Three', 'Four'];

class PengurusPesantrenCreatePage extends StatefulWidget {
  const PengurusPesantrenCreatePage({Key? key}) : super(key: key);

  @override
  State<PengurusPesantrenCreatePage> createState() =>
      _PengurusPesantrenCreatePageState();
}

class _PengurusPesantrenCreatePageState
    extends State<PengurusPesantrenCreatePage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Pesantren > Pengurus > Tambah'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            textField('Nama'),
            dropdownTextField(),
            dropdownTextField(),
            dropdownTextField(),
            dropdownTextField(),
            dropdownTextField(),
            textField('No. Telp'),
            textField('Email'),
            const SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: buttonSubmit(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buttonSubmit() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: 350,
      height: 45,
      decoration: BoxDecoration(
        color: Color(0xff2BA77A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'SIMPAN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget logoMasjid(String title, String url) {
    return Container(
      width: 170,
      height: 80,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          Spacer(),
          Image.asset(url),
        ],
      ),
    );
  }

  Widget textField(String hint) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
      ),
    );
  }

  Widget dropdownTextField() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 0,
        style: const TextStyle(
          color: Colors.grey,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
