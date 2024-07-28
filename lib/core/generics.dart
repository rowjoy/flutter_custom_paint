// ignore_for_file: avoid_print


// 2. Generics:

class Generics<T> {
  T value;
  String? userName;
  Generics({required this.value, this.userName});
}



// 2. Generics: 

class UserName<T> {
  T userName;
  T userAge;
  T userCountry;

  UserName({required this.userAge, required this.userCountry, required this.userName});
}


//  3. Metaprogramming:
class Person {
  String? name;
}


void main (){
  var genericsString = Generics(value: "Jamirul islam");
  var genericsInt = Generics(value: 878);
  print(genericsString.value);
  print(genericsInt.value);


  var userinfo = UserName(userAge: 12, userCountry: "Bangladesh", userName: "Jamirul islam");
  print(userinfo.userCountry.runtimeType);

  var p = Person();
  p.name = "Md. Kamal";

  

}


// [https://techdynasty.medium.com/advanced-dart-in-flutter-elevating-your-development-skills-1c8ec309266f]