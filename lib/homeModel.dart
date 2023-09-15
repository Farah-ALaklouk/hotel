class HomeModel1{
  String ? name;
  String? description;
  String?pictrue;
  List<AnotherView>?anotherView;

  HomeModel1(Map map){
  name=map["name"];
  description=map["description"];
  pictrue=map["pictrue"];
  List<Map>?data=map["anotherview"];
  anotherView=data?.map((e){
    return AnotherView(e);}).toList();

  }

}

class AnotherView {
  String?image;
  String?image2;

  AnotherView(Map map){
    image=map["image"];
    image2=map["image2"];
  }
}
