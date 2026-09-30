import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchProductos() async {
  final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

  if(response.statusCode == 200){
    return jsonDecode(response.body);
  }

  throw Exception("Error al obtener los productos");
}

Future<dynamic> fetchProducto(int id) async {
  final response = await http.get(Uri.parse("https://fakestoreapi.com/products/$id"));

  if(response.statusCode == 200){
    return jsonDecode(response.body);
  }

  throw Exception("Error al obtener el producto");
  
}

Future<dynamic> login(String username, String password) async {
  final response = await http.post(
    Uri.parse("https://dummyjson.com/docs/auth"),
    
    headers: {
      'Content-Type': 'application/json'
    },

    body: jsonEncode({
      "username":username,
      "password":password
    })
  );

  if (response == 200){
    return jsonDecode(response.body);
  }

  throw Exception("Usuario o contrasela incorrectos");
}