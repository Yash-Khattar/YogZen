import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> fetchYogaPose() async {
    final String apiKey = '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';
    final String apiUrl = 'https://api.openai.com/v1/engines/davinci/completions';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

  final String prompt = 'Generate a yoga pose and provide step-by-step instructions on how to perform it.';

    final Map<String, dynamic> data = {
      'prompt': prompt,
      'max_tokens': 100,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: json.encode(data),
    );
  //print(response.statusCode);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String yogaPoseInstructions = responseData['choices'][0]['text'];
      return yogaPoseInstructions;
    } else {
      throw Exception('Failed to load data');
    }
  }
