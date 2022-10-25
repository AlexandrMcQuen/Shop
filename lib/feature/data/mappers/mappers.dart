abstract class Mappers<Src, Dst>{
  Dst? map(Src? entity);

  List<Dst> mapList(List<Src?>? entity) => entity?.map(map).toList().whereType<Dst>().toList() ?? List<Dst>.empty();
}