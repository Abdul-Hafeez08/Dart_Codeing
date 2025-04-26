class A {
  a() {
    print('A');
  }
}

class B extends A {
  b() {
    print('B');
  }
}

class C extends B {
  c() {
    print('B');
  }
}

void main() {
  C c = C();
  c.a();
}
