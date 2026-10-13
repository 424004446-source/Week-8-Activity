String getGrade(double score) {
  if (score >= 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

String analyzeScore(double score, int attempts) {
  if (score < 0 || score > 100) {
    return 'Invalid score. Enter a number from 0 to 100.';
  }

  String grade = getGrade(score);

  print('Score: ${score.toStringAsFixed(1)}');
  print('Grade: $grade');

  for (int i = 1; i <= attempts; i++) {
    print('Check $i: Your score has been recorded.');
  }

  if (score >= 75) {
    return 'Result: Passed!';
  } else {
    return 'Result: Failed. Keep practicing!';
  }
}

void testInput(String input) {
  print('\n--- Testing input: "$input" ---');

  try {
    double score = double.parse(input);

    if (score < 0 || score > 100) {
      print('Invalid input. Enter a score between 0 and 100.');
    } else {
      String result = analyzeScore(score, 3);
      print(result);
    }
  } on FormatException {
    print('Invalid input. Please use a number, such as 85.');
  } catch (error) {
    print('Something went wrong. Please try again.');
  } finally {
    print('Thank you for using the Grade Analyzer.');
  }
}

void main() {
  print('=== DART GRADE ANALYZER ===');

  testInput('85');
  testInput('65');
  testInput('120');
  testInput('abc');
}
