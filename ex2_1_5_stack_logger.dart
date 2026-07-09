mixin Loggable {
  void log(String msg) {
    DateTime now = DateTime.now();
    print('[$now] LOG: $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _storage = [];
  void push(T element) {
    _storage.add(element);
    log('Pushed element: $element ');
  }

  T? pop() {
    if (_storage.isEmpty) {
      log('Stack is empty!');
      return null;
    }
    T lastElement = _storage.removeLast();
    log('Popped element: $lastElement ');
    return lastElement;
  }
  @override
  String toString(){
    return 'Stack contents : $_storage';
  }
  bool get isEmpty => _storage.isEmpty;
  int get length => _storage.length;

}
void main() {
  Stack<int> stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print('Stack length: ${stack.length}');
  int? poppedItem = stack.pop(); 
  print('Popped item : $poppedItem');
  print(stack);
}