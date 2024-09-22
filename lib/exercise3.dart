class Student {
  List<Map<String, String>> studentList;
  
  Student(this.studentList) {
  }

  void sort(String field) {
    studentList.sort((a, b) {
      return a[field]!.compareTo(b[field]!);
    });
  }

  void output() {
    studentList.forEach((student) {
      print(student);
      // student.forEach((key, value) {
      //   print('$key: $value');
      // });
    });
  }

  void plus(Map<String, String> person) {
    studentList.add(person);
  }

  void removeFromList(String field) {
    studentList.removeWhere((item) => item['first'] == field);
  }

}
