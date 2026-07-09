class Book{
  String? title;
  String? author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail(){
    print('ชื่อหนังสือ: $title, ชื่อผู้เเต่ง: $author, ราคา: $price');
  }
}
void main(){
  Book b1 = Book('Cry,Even Better If you Beg','Solche',2390);
  b1.showDetail();
  Book b2 = Book('ดั่งเดือนค้างฟ้า','โสมสิริ',683.05);
  b2.showDetail();
}