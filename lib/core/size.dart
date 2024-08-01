


// final width = MediaQuery.of(get.context).size.width;
// final height = MediaQuery.of(context).size.height;



// ignore_for_file: avoid_print

class MultipalTypeList<T> {
   List<T>  multipalTypeLists = [];

   void addData(T item){
     multipalTypeLists.add(item);
   }
}


class MapKeys<T> {
  T value;
  MapKeys({required this.value});

}

class MapValues<T> {
  T? values;
  MapValues({this.values});
}
class Maping {
   Map<MapKeys, MapValues> mymap = {};
} 

void main (){

  MultipalTypeList multipalTypeList = MultipalTypeList();
  Maping maping = Maping();

  multipalTypeList.addData(23);
  multipalTypeList.addData("JAMIRUL ISLAM");
  multipalTypeList.addData(false);

  for (int i = 0; i < 20; i++){
    multipalTypeList.addData(i);
    maping.mymap[MapKeys(value: i)] = MapValues(values: multipalTypeList.multipalTypeLists);
  }
  

  maping.mymap.forEach((key, value){
     print("${key.value} : ${value.values}");
  });

  print(multipalTypeList.multipalTypeLists);

}