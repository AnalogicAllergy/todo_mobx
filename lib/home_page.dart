import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_mobx/controllers/home_controller.dart';
import 'package:todo_mobx/model/item_model.dart';

import 'item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    _dialog() {
      var model = ItemModel();
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text("Adicionar items"),
              content: TextField(
                onChanged: model.setContent,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Novo item"),
              ),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      controller.addTodo(model);
                      Navigator.pop(context);
                    },
                    child: Text("Salvar")),
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancelar")),
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
              hintText: "Pesquisar", hintStyle: TextStyle(color: Colors.white)),
          onChanged: controller.setFiltro,
        ),
        actions: <Widget>[
          Observer(builder: (_) {
            return IconButton(
              icon: Text("${controller.totalChecked}"),
              onPressed: () {},
            );
          })
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.listFiltered.length,
          itemBuilder: (_, index) {
            var item = controller.listFiltered[index];
            return ItemWidget(
              item: item,
              removeClicked: () {
                controller.meusTodos.remove(item);
              },
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
