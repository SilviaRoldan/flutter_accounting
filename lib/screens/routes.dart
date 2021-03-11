import 'package:flutter_accounting/screens/clients.dart';
import 'package:flutter_accounting/screens/form-Clients.dart';
import 'package:flutter_accounting/screens/formSuppliers.dart';
import 'package:flutter_accounting/screens/home.dart';
import 'package:flutter_accounting/screens/suppliers.dart';
import 'package:flutter_accounting/screens/invoices.dart';
import 'package:flutter_accounting/screens/expensive.dart';
import 'package:flutter_accounting/screens/graphic.dart';
import 'package:flutter_accounting/screens/form-Login.dart';
import 'package:flutter_accounting/screens/form-register.dart';
import 'package:flutter_accounting/screens/form-Invoices.dart';
import 'package:flutter_accounting/screens/form-Expensive.dart';


class Routes {
  static const PATH_HOME = '/';
  static const PATH_CLIENTS = '/clients';
  static const PATH_SUPPLIERS = '/suppliers';
  static const PATH_INVOICES = '/invoices';
  static const PATH_EXPENSIVE = '/expensive';
  static const PATH_GRAPHIC = '/graphic';
  static const PATH_FORM_CLIENTS = '/formClients';
  static const PATH_FORM_SUPPLIERS = '/formSuppliers';
  static const PATH_FORM_LOGIN = '/formLogin';
  static const PATH_FORM_REGISTER = '/formRegister';
  static const PATH_FORM_INVOICES = '/formInvoices';
  static const PATH_FORM_EXPENSIVE = '/formExpensive';


  static final routes = {
    PATH_HOME: (context) => Home(),
    PATH_CLIENTS: (context) => Clients(),
    PATH_SUPPLIERS: (context) => Suppliers(),
    PATH_INVOICES: (context) => Invoices(),
    PATH_EXPENSIVE: (context) => Expensive(),
    PATH_GRAPHIC: (context) => Graphic(),
    PATH_FORM_CLIENTS : (context) => FormClients(),
    PATH_FORM_SUPPLIERS : (context) => FormSuppliers(),
    PATH_FORM_LOGIN : (context) => FormLogin(),
    PATH_FORM_REGISTER : (context) => FormRegister(),
    PATH_FORM_INVOICES : (context) => FormInvoices(),
    PATH_FORM_EXPENSIVE : (context) => FormExpensive(),
  };
}
