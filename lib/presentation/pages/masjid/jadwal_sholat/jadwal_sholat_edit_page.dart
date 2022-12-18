import 'package:flutter/material.dart';

class JadwalSholatEditPage extends StatefulWidget {
  const JadwalSholatEditPage({Key? key}) : super(key: key);

  @override
  State<JadwalSholatEditPage> createState() => _JadwalSholatEditPageState();
}

class _JadwalSholatEditPageState extends State<JadwalSholatEditPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Masjid > Jadwal Sholat > Edit'),
        backgroundColor: Color(0xFF043861),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textField('Subuh'),
            textField('04.23'),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text('Otomatis sesuai PrayTime / Sistem'),
              ],
            ),
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
}
