// ignore_for_file: avoid_print

class Ref {
  Ref();

  // Creator which hold state.
  final Set<Creator> _creators = {};

  // Dependency graph. Think this as a directional graph
  /// A -> [B C] means if A changes , B and C need change too
  final Map <Creator, Set<Creator>> _graph = {};

  // Element which hold state 

  final Map<Creator,Element> _elements = {};

  ///Get or create an element for creator 
  Element _element<T> (Creator creator) => _elements.putIfAbsent(creator, () => creator._createElement(this));

  /// Add an edge creator -> waTCHER TO THE GRAP , THEN RETURN CRTATOR STATE 
  
  T watch<T> (Creator<T> creator, Creator? watcher){
     if (watcher != null){
       (_graph[creator] ??= {}).add(watcher);
     }
     return _element<T>(creator).state;
  }

  void set<T> (Creator<T> creator , T state){
    final element = _element<T>(creator);
    if (state != element.state){
      element.state = state;
      _onStateChange(creator);
    }
  }

  void update<T>(Creator<T> creator, T Function(T) update){
     set(creator,  update(_element(creator).state));
  }
  
  void  _onStateChange (Creator creator){
     for (final c in _graph[creator] ?? {}){
       _element(c).recreate();
     }
  }




}




/// Creator creates a stream of T.
class Creator<T> {
   const Creator(this.create);
   final T Function(Ref ref, Creator<T> self) create;
   Element<T> _createElement (Ref ref) => Element<T>(ref, this);

}


// Element holds the state for creator 
class Element<T>{
 final Ref ref;
 final Creator<T> creators;
 T state;
 Element(this.ref, this.creators) : state = creators.create(ref,creators);
 void recreate(){
   final newSate = creators.create(ref,creators);
   state = newSate;
   ref._onStateChange(creators);
 }// Need implement this 
 


}


final number = Creator((ref, self) => 1);
final double = Creator((ref, self) => ref.watch(number, self) * 2);

void main(){
  final ref = Ref();
  print(ref.watch(double, null)); // 2
  ref.set(number, 10);
  print(ref.watch(double, null)); // 20

  ref.update(number, (p0) => p0 + 1);
  print(ref.watch(double, null)); // 22

}


