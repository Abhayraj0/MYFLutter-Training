import 'package:flutter/material.dart';
import 'package:inventorymanagementapp/Database/Model/product.dart';
import 'package:inventorymanagementapp/Database/db.dart';

class MyProductAdd extends StatefulWidget {
  const MyProductAdd({super.key});

  @override
  State<MyProductAdd> createState() => _MyProductAddState();
}

class _MyProductAddState extends State<MyProductAdd> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _categoryController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          } else if (value.length > 5) {
                            return "5 length must be required";
                          }
                        },
                        controller: _nameController,
                        decoration: InputDecoration(
                            hintText: "Enter the Name",
                            labelText: "Name",
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Category is Required";
                          }
                        },
                        controller: _categoryController,
                        decoration: InputDecoration(
                            hintText: "Enter the Category",
                            labelText: "Category",
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Price is Required";
                          }
                        },
                        controller: _priceController,
                        decoration: InputDecoration(
                            hintText: "Enter the Price",
                            labelText: "Price",
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is Required";
                          }
                        },
                        controller: _numberController,
                        decoration: InputDecoration(
                            hintText: "Enter the Number",
                            labelText: "Number",
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(.7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        height: 80,
                        width: 200,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextButton(
                          onPressed: () {
                            setState(() async{
                              if (_formKey.currentState!.validate()) {
                                var productMo = ProductModel();
                                var productDp = DatabaseConnectionA();

                                productMo.name = _nameController.text;
                                productMo.category = _categoryController.text;
                                productMo.price = _priceController.text;
                                productMo.number = _numberController.text;

                                var resu = await productDp.insertProduct(productMo);
                                print("--------------------->>>>>>>>>>${resu}");
                                Navigator.pop(context);
                                
                              }
                              _nameController.clear();
                              _categoryController.clear();
                              _priceController.clear();
                              _numberController.clear();
                            });
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
