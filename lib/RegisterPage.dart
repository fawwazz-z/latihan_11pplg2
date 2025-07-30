import 'package:flutter/material.dart';   
import 'InputField.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String gender = "Laki-laki";
  DateTime? birthDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Register")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ini pakai reusable
            InputField(label: "Nama", controller: nameController),
            InputField(label: "Email / Username", controller: emailController),
            InputField(
              label: "Password",
              controller: passwordController,
              obscure: true,
            ),

            const SizedBox(height: 10),

            // Jenis Kelamin
            Row(
              children: [
                const Text("Jenis Kelamin: "),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButton<String>(
                    value: gender,
                    isExpanded: true,
                    items: ["Laki-laki", "Perempuan"]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Tanggal Lahir
            Row(
              children: [
                const Text("Tanggal Lahir: "),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2005),
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        birthDate = pickedDate;
                      });
                    }
                  },
                  child: Text(
                    birthDate == null
                        ? "Pilih Tanggal"
                        : "${birthDate!.day}/${birthDate!.month}/${birthDate!.year}",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Tombol Daftar
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Tampilkan data dengan dialog
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text("Pendaftaran Berhasil"),
                      content: Text(
                        "Nama: ${nameController.text}\n"
                        "Username: ${emailController.text}\n"
                        "Password: ${passwordController.text}\n"
                        "Gender: $gender\n"
                        "Tanggal Lahir: ${birthDate != null ? "${birthDate!.day}/${birthDate!.month}/${birthDate!.year}" : "-"}",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Daftar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}