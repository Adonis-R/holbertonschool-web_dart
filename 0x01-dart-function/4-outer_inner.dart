void outer(String name, String id)
{
  String outerVar = 'Outer variable';
  print('Hello $name, your id is $id');
  print(outerVar);

  void inner() {
    String innerVar = 'Inner variable';
    print(innerVar);
  }

  inner();

}