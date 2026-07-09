abstract class PaymentMethod{
  void pay(double amount);
}

class CreditCard extends PaymentMethod{
  @override
  void pay(double amount){
    print('ชำระเงิน $amount บาท => บัตรเครดิต');
  }
}

class PromptPay extends PaymentMethod{
  @override
  void pay(double amount){
    print('ชำระเงิน $amount บาท => พร้อมเพย์');
  }
}
class CashOnDelivery extends PaymentMethod{
    @override
  void pay(double amount){
    print('ชำระเงิน $amount บาท => เก็บเงินปลายทาง');
  }
}
void main(){
  PaymentMethod creditCard = CreditCard();
  PaymentMethod promptPay = PromptPay();
  PaymentMethod cashOnDelivery = CashOnDelivery();

  creditCard.pay(4500);
  promptPay.pay(600);
  cashOnDelivery.pay(150);

}
// ใช้ extends เพราะว่า