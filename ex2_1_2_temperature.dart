class Temperature{
  double _celsius =  0.0;

  double get celsius => _celsius;
  double get fahrenheit => (_celsius*9/5) + 32;

  set celsius(double value){
    if(value < -273.15){
      print('อุณหภูมิต่ำกว่า -275.15');
    }else{
      _celsius = value;
      
    }
  }
  
}

void main(){
  var temp = Temperature();
  temp.celsius = 40;
  print('C = ${temp.celsius } ํC');
  print('F = ${temp.fahrenheit } ํC');

  temp.celsius = -300.0;
}