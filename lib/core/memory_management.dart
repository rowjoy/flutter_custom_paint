

// ignore_for_file: avoid_print

class Point {
  int x;
  int y;
  Point(this.x, this.y);
}

int main (){
  procress_2([12,34,34,21,34,56,34]);
  procres_1([12,34,34,21,34,56,34]);
  return 0;
}


void procres_1(List<int> number){
  List<Point> pontsList = [];
   for ( int i in number){
     Point point = Point(i, i*4);
     pontsList.add(point);
   }
   print(pontsList.toList().toSet().toString());
}


void procress_2 (List<int> number){
  List<Point> ponts = [];
  Point point = Point(0, 0);
  for (int i in number){
     point.x = i;
     point.y = i * 2;
     ponts.add(Point(point.x, point.y));
  }
  
  print(ponts.toList().toString());
}