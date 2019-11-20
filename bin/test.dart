import 'package:test/test.dart';

import 'main.dart';
main(){
  test('simple fraction', (){
    expect(simplify('22/11'),  '2/1');
    expect(simplify('17/2'),  '17/2');

  });
}