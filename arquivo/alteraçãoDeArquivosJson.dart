import 'dart:convert';
import 'dart:io';
void main() {
  List a = ['AAA', 'BBB'];

  print(a.indexOf('BBB'));

  a[a.indexOf('AAA')] = 'CCC';

  print(a);
}

