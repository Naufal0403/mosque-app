import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../components/global/button/primary_button.dart';
import '../../components/global/drawer/home_drawer.dart';
import '../../utils/style/generate_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FormGroup formGroup = fb.group({
    'name': ['', Validators.required],
    'roles': ['', Validators.required],
    'city': ['', Validators.required],
    'district': ['', Validators.required],
    'village': ['', Validators.required],
    'address': ['', Validators.required],
    'contact': ['', Validators.required],
    'email': ['', Validators.required],
    'password': ['', Validators.required],
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
        backgroundColor: Color(0xff043861),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: ReactiveFormBuilder(
            form: () => formGroup,
            builder: (context, formGroup, child) {
              return Column(
                children: [
                  Container(
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(0xff043861),
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://i.pinimg.com/474x/df/f8/03/dff803e9e1915cb6a48f1d6c1f44cb57.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  ReactiveTextField(
                    formControlName: 'name',
                    decoration: GenerateStyle.inputDecoration('Masukkan Nama'),
                  ),
                  SizedBox(height: 18),
                  ReactiveDropdownField(
                    items: [
                      DropdownMenuItem(
                        child: Text('Takmir Masjid'),
                        value: 'Takmir Masjid',
                      ),
                      DropdownMenuItem(
                        child: Text('Bendahara Masjid'),
                        value: 'Bendahara Masjid',
                      )
                    ],
                    formControlName: 'roles',
                    decoration: GenerateStyle.inputDecoration('Pilih Peran'),
                  ),
                  SizedBox(height: 18),
                  ReactiveDropdownField(
                    items: [
                      DropdownMenuItem(
                        child: Text('Surabaya'),
                        value: 'Surabaya',
                      ),
                      DropdownMenuItem(
                        child: Text('Pasuruan'),
                        value: 'Pasuruan',
                      ),
                    ],
                    formControlName: 'city',
                    decoration: GenerateStyle.inputDecoration('Pilih Kota/Kabupaten'),
                  ),
                  SizedBox(height: 18),
                  ReactiveDropdownField(
                    items: [
                      DropdownMenuItem(
                        child: Text('Wonokromo'),
                        value: 'Wonokromo',
                      )
                    ],
                    formControlName: 'district',
                    decoration: GenerateStyle.inputDecoration('Pilih Kecamatan'),
                  ),
                  SizedBox(height: 18),
                  ReactiveDropdownField(
                    items: [
                      DropdownMenuItem(
                        child: Text('Wonokromo'),
                        value: 'Wonokromo',
                      )
                    ],
                    formControlName: 'village',
                    decoration: GenerateStyle.inputDecoration('Pilih Kelurahan/Desa'),
                  ),
                  SizedBox(height: 18),
                  ReactiveTextField(
                    formControlName: 'address',
                    maxLines: 3,
                    minLines: 3,
                    decoration: GenerateStyle.inputDecoration('Masukkan Alamat'),
                  ),
                  SizedBox(height: 18),
                  ReactiveTextField(
                    formControlName: 'contact',
                    decoration: GenerateStyle.inputDecoration('Masukkan Kontak'),
                  ),
                  SizedBox(height: 18),
                  ReactiveTextField(
                    formControlName: 'email',
                    decoration: GenerateStyle.inputDecoration('Masukkan Email'),
                  ),
                  SizedBox(height: 18),
                  ReactiveTextField(
                    formControlName: 'password',
                    decoration: GenerateStyle.inputDecoration('Masukkan Password'),
                  ),
                  SizedBox(height: 18),
                  ReactiveFormConsumer(builder: (context, formGroup, child) {
                    return PrimaryButton(
                      onTap: () {},
                      title: 'Simpan',
                      isEnable: formGroup.valid,
                    );
                  }),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
