import 'package:mobx/mobx.dart';
part 'item_model.g.dart';

class ItemModel = _ItemModelBase with _$ItemModel;

abstract class _ItemModelBase with Store {
  _ItemModelBase({this.content, this.check = false});

  @observable
  String content;
  @observable
  bool check;

  @action
  setContent(String value) => content = value;
  @action
  setCheck(bool value) => check = value;
}
