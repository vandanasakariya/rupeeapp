import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:rupeeapp/moduls/currentprice/rupee_modal.dart';

class RupeeService {
  static final url = "https://price-api.crypto.com/price/v2/m/rupee";
  static Future<RupeeCruptoModal?> getRupeeData() async {
    final response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "text/plain",
    });
    return RupeeCruptoModal.fromJson(jsonDecode(response.body));
  }
}
