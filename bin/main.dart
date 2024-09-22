import 'dart:convert';

import 'package:exercise3/exercise3.dart';

void main(List<String> arguments) {

  String json = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
    ''';

    var studentList = (jsonDecode(json) as List)
      .map((item) => Map<String, String>.from(item))
      .toList();

  Student student = Student(studentList);

  print("FIRST OUTPUT:");
  student.output();
  print("");

    if (arguments.length == 3) {
    String firstName = arguments[0];
    String lastName = arguments[1];
    String email = arguments[2];

    student.plus({'first': firstName, 'last': lastName, 'email': email});
  } else {
    print('ERROR! The format has to be: dart run bin/main.dart <first name> <last name> <email>');
    return;
  }

print("ADDED 1 PERSON OUTPUT:");
  student.output();
  print("");

  student.sort("first");
  print("SORTED OUTPUT:");
  student.output();
  print("");

  print("REMOVED OUTPUT:");
  student.removeFromList("Paulo");
  student.output();

}
