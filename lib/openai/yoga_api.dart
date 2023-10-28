import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yogzen/global/key.dart';

Future<List<String>> fetchYogaPose() async {
    
    final String apiUrl = 'https://api.openai.com/v1/engines/text-davinci-003/completions?tempature=0.3';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

  final String prompt = 'Give me steps for Tadasan in points.';

    final Map<String, dynamic> data = {
      'prompt': prompt,
      'max_tokens': 300,
    };

    // "\n\n1. Adho Mukha Svanasana (Downward Facing Dog)\nSteps:\na. Begin on your hands and kn
    // ees, pressing palms firmly into the mat and distribute the weight evenly into the hands and kness.\nb. Str
    // etch the elbows and relax the shoulders away from the ears.\nc. Gently tuck the toes and slowly lift the hips up and back,
    // drawing the tailbone up towards the ceiling.\nd. Lengthen the spine, slightly bend the knees if needed, and keep the legs hip wi
    // dth apart.\ne. Press your hands firmly into the mat and work towards straightening the legs.\nf. Stay here for five deep breaths, rela
    // xing more and more into the stretch.\n\n
    // 2. Virabhadrasana (Warrior Pose)\nSteps:\na. Bring your feet ab

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
      List<String> steps = yogaPoseInstructions.split("\n");
      steps.removeWhere((element) => element == "");
      // print(steps);
      return steps;
    } else {
      throw Exception('Failed to load data');
    }
  }
