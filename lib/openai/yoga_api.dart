import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> fetchYogaPose() async {
    final String apiKey = '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';
    final String apiUrl = 'https://api.openai.com/v1/engines/text-davinci-003/completions?tempature=0.3';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

  final String prompt = 'generate 5 yogas with thier names and steps on how to perform them';

    final Map<String, dynamic> data = {
      'prompt': prompt,
      'max_tokens': 300,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: json.encode(data),
    );
  print(response.statusCode);
  print(response.body);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String yogaPoseInstructions = responseData['choices'][0]['text'];
      return yogaPoseInstructions;
    } else {
      throw Exception('Failed to load data');
    }
  }
