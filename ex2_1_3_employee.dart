
class Employee {
  String name;
  String position;

  Employee(this.name, this.position);
  double calculateSalary() {
    return 0.0;
  }
  void displayInfo() {
    print('ชื่อ: $name, ตำแหน่ง: $position, เงินเดือน: ${calculateSalary()} บาท');
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary; 
  double otRate;        
  int otDays;           
  FullTimeEmployee(String name, String position, this.monthlySalary, this.otRate, this.otDays) 
      : super(name, position);
  @override
  double calculateSalary() {
    return monthlySalary+ (otRate * otDays);
  }
}


class PartTimeEmployee extends Employee {
  double dailyRate; 
  int workDays;     
  PartTimeEmployee(String name, String position, this.dailyRate, this.workDays) 
      : super(name, position);
  @override
  double calculateSalary() {
    return dailyRate * workDays; 
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee('จิรายุ นก', 'Developer', 200000,3000,6),
    FullTimeEmployee('นันทิศ บุญ', 'Database', 200000,3000,7),
    PartTimeEmployee('ภัทรานิษฐ์ ช่าง', 'Finance', 2000, 20), 
    PartTimeEmployee('นันท์นภัส เบ้า', 'Marketing', 2000, 10), 
  ];

  print('เงินเดือนพนักงาน');
  for (var emp in employees) {
    emp.displayInfo(); 
  }
}