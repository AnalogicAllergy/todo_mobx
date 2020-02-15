import 'package:mobx/mobx.dart';
import 'package:todo_mobx/model/item_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<ItemModel> meusTodos = [
    ItemModel(content: "Fazer a barba", check: true),
  ].asObservable();
  @computed
  int get totalChecked => meusTodos.where((item) => item.check).length;

  @observable
  String filtro = '';
  @action
  setFiltro(String value) => filtro = value;

  @computed
  List<ItemModel> get listFiltered {
    if (filtro.isEmpty || filtro == null) return meusTodos;
    return meusTodos
        .where(
            (item) => item.content.toLowerCase().contains(filtro.toLowerCase()))
        .toList();
  }

  @action
  addTodo(ItemModel item) {
    meusTodos.add(item);
  }

  @action
  removeTodo(ItemModel itemToRemove) {
    meusTodos.removeWhere((item) => item.content == itemToRemove.content);
  }
}
