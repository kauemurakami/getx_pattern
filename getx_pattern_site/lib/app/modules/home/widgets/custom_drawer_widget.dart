import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      child: Drawer(
        child: Container(
            margin: EdgeInsets.all(16),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.list,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Modelos",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.list,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Contratantes",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: ()=> Get.toNamed('contratantesCadastrados')
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.group_add,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Solic. de Contratantes",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: (){ Get.toNamed('solicitacaoContratante');},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.group_add,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Adicionar Admins",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: ()=> Get.toNamed('addAdmin'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.message,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 24.0),
                  child: InkWell(
                    splashColor: Theme.of(context).accentColor,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.exit_to_app,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sair",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            )),
      ),
    );
  }
}