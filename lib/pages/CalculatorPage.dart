import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/components/CustomButton.dart';
import 'package:latihan_11pplg2/components/CustomTextField.dart';
import 'package:latihan_11pplg2/controllers/CalculatorController.dart';

class Calculator extends StatelessWidget {
  final CalculatorController calculatorController = Get.put(CalculatorController());

  Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Kalkulator"),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Customtextfield(
              controller: calculatorController.txtangka1,
              label: "Masukkan Angka 1",
              labelcolor: Colors.green,
              pass: false,
            ),
            const SizedBox(height: 12),
            Customtextfield(
              controller: calculatorController.txtangka2,
              label: "Masukkan Angka 2",
              labelcolor: Colors.green,
              pass: false,
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custombutton(
                  myText: "+",
                  myTextColor: Colors.white,
                  onPressed: calculatorController.tambah,
                  backgroundColor: Colors.orangeAccent,
                ),
                Custombutton(
                  myText: "-",
                  myTextColor: Colors.white,
                  onPressed: calculatorController.kurang,
                  backgroundColor: Colors.orangeAccent,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custombutton(
                  myText: "×",
                  myTextColor: Colors.white,
                  onPressed: calculatorController.kali,
                  backgroundColor: Colors.orangeAccent,
                ),
                Custombutton(
                  myText: "÷",
                  myTextColor: Colors.white,
                  onPressed: calculatorController.bagi,
                  backgroundColor: Colors.orangeAccent,
                ),
              ],
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Obx(() {
                return Text(
                  "Hasil: ${calculatorController.textresult.value}",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                );
              }),
            ),

            const SizedBox(height: 30),
            Custombutton(
              myText: "Clear",
              myTextColor: Colors.white,
              onPressed: calculatorController.clear,
              backgroundColor: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
