// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
/// EXPECTED OUTPUT:
/// Manager: John Smith (ID: M001, Department: IT, Team Size: 5)
/// Job Title: Manager
/// Base Salary: 8000.0
/// Calculated Salary: 9000.0
/// Payment processed: 9000.0
/// Report: Monthly report for John Smith in IT department
///
/// Developer: Alice Johnson (ID: D001, Department: IT, Language: Dart)
/// Job Title: Senior Developer
/// Base Salary: 6000.0
/// Calculated Salary: 6500.0
/// Payment processed: 6500.0
library;

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  // ignore: prefer_expression_function_bodies
  double calculateSalary(double baseSalary, double bonus) {
    // TO-DO: Calculate total salary (base + bonus)
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    // TO-DO: Process payment and print "Payment processed: <amount>"
    print('Payment Processed:$amount');
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  // ignore: prefer_expression_function_bodies
  String generateReport(String employeeName, String department) {
    // TO-DO: Generate and return report string: "Report: Monthly report for <name> in <department> department"
    return 'Report:Monthly report for $employeeName in $department department';
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  Employee(this.name, this.id, this.department);
  String name;
  String id;
  String department;

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    // TO-DO: Display employee information
    print('Name:$name(Id:$id,Department:$department)');
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  Manager(super.name, super.id, super.department, this.teamSize);
  int teamSize;

  @override
  // ignore: prefer_expression_function_bodies
  String getJobTitle() {
    // TO-DO: Return manager job title
    return 'Manager';
  }

  @override
  // ignore: prefer_expression_function_bodies
  double getBaseSalary() {
    // TO-DO: Return manager base salary
    return 8000.0;
  }

  @override
  void displayInfo() {
    // TO-DO: Override to show manager-specific info as shown in expected output
    // var m1 = Manager('John Smith', 'M001', 'IT', 5);
    print(
      'Manager:$name (ID:$id,Department:$department,TeamSize:$teamSize)',
    );
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  Developer(super.name, super.id, super.department, this.programmingLanguage);
  String programmingLanguage;

  @override
  String getJobTitle() {
    // TO-DO: Return developer job title
    return 'Senior Developer';
  }

  @override
  // ignore: prefer_expression_function_bodies
  double getBaseSalary() {
    // TO-DO: Return developer base salary
    return 6000.0;
  }

  @override
  void displayInfo() {
    // TO-DO: Override to show developer-specific info as shown in expected output
    // var d1 = Developer('Alice Johnson', 'D001', 'IT', 'Dart');
    print(
      'Devoloper:$name (ID:$id,Department:$department,Programming Language:$programmingLanguage)',
    );
  }
}

void main() {
  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information

  // TO-DO: Create one Manager and one Developer with the details shown in expected output
  var m1 = Manager('John Smith', 'M001', 'IT', 5);
  var d1 = Developer('Alice Johnson', 'D001', 'IT', 'Dart');
  // TO-DO: Demonstrate salary calculation and payment processing for both
  // print('Manager Salary:${m1.calculateSalary(8000.0, 1000.0)}');
  // print('Devolper salary:${d1.calculateSalary(6000.0, 500.0)}');

  // TO-DO: Generate and print report for the Manager

  // TO-DO: Display information for both employees
  m1.displayInfo();
  print('Job Title:${m1.getJobTitle()}');
  print('Base Salary:${m1.getBaseSalary()}');
  var amount = m1.calculateSalary(8000.0, 1000.0);
  print('Calculated Salary:$amount');
  m1
    ..processPayment(amount)
    ..generateReport(m1.name, m1.department);
  d1.displayInfo();
  print('Job Title:${d1.getJobTitle()}');
  print('Base Salary:${d1.getBaseSalary()}');
  var amount1 = m1.calculateSalary(6000.0, 500.0);
  print('Calculated Salary:$amount1');
  d1.processPayment(amount1);
}
