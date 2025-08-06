import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var textresult = "".obs;

  void tambah() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int result = angka1 + angka2;
    print("hasil jumlah" + result.toString());
    textresult.value = result.toString();
  }

  void kurang() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int result = angka1 - angka2;
    print("hasil kurang " + result.toString());
    textresult.value = result.toString();
  }

  void bagi() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    double result = angka1 / angka2;
    print("hasil bagi " + result.toString());
    textresult.value = result.toString();
  }

  void kali() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int result = angka1 * angka2;
    print("hasil kali " + result.toString());
    textresult.value = result.toString();
  }
  void clear(){
     txtangka1.clear();
    txtangka2.clear();
    textresult.value = "";}
   
  
}