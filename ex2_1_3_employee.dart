class Employee{
  String? name;
  String? position;

  void Salary(){
    if 
  }
}
class FullTimeEmployee extends Employee{
  @override
  void Salary(){
    print('ชื่อ: $name, ตำเเหน่ง: $position , วันทำงาน: $day , เงินเดือน:$salary');
  }
}

class PartTimeEmployee extends Employee{
  @override
  void Salary(){
    print('ชื่อ: $name, ตำเเหน่ง: $position , วันทำงาน: $day , เงินเดือน:$salary');
  }
}
void main(){
  List<Employee> employee = [Employee(),FullTimeEmployee(),PartTimeEmployee()];

  for(var s in employee){
    s.Salary()

  }
}