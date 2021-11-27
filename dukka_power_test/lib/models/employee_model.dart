class Employee {
  int? id ;
  final String fullname;
  final String email;
  final String phoneNumber;
  final String position;
  final String salary;

  Employee(
      {
        this.id,
        required this.fullname,
        required this.phoneNumber,
        required this.email,
        required this.position,
        required this.salary,
      });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'fullname' : fullname,
      'phoneNumber': phoneNumber,
      'email': email,
      'position': position,
      'salary': salary,
    };
  }
  @override
  String toString() {
    return 'Employee(id : $id, fullname : $fullname, phoneNumber : $phoneNumber,'
        'email : $email, position : $position, salary : $salary)';
  }
}