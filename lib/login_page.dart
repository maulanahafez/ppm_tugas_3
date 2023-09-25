import 'package:flutter/material.dart';
import 'package:ppm_tugas_3/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String namaUser = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showInput(_usernameController, "Username", false, "person"),
            const SizedBox(
              height: 16,
            ),
            _showInput(_passwordController, "Password", true, "password"),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_usernameController.text == 'admin' &&
                      _passwordController.text == 'admin') {
                    _saveUsername();
                    _showDialog("Anda Berhasil Login", const HomePage());
                  } else {
                    _showDialog(
                        "Username dan Password Salah", const LoginPage());
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(6, 20, 6, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', _usernameController.text);
  }

  Widget _showInput(TextEditingController namaController, String placeholder,
      bool isPassword, String icon) {
    IconData iconUsed = icon == 'person' ? Icons.person : Icons.password;
    return TextField(
      controller: namaController,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
        prefixIcon: Icon(iconUsed),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
      ),
    );
  }

  _showDialog(pesan, alamat) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => alamat),
                );
              },
              child: const Text("OK"),
            )
          ],
        );
      },
    );
  }
}
