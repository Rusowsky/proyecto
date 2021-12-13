import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/persistencia/tienda_dao.dart';
import 'package:proyecto/vista/vista_principal.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  TiendasDao.AgregarTiendasDelServidor().then((value) => runApp(ProyectoMainView()));
}