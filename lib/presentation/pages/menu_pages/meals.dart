import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/product.dart';
import '../../../provider/favourite.dart';
import '../../../provider/lang.dart';
import '../details.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  bool _isProductSelected = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          _isProductSelected
              ? setState(() {
            _isProductSelected = false;
          })
              : exit(0);
          return Future.value(false);
        }, child: Consumer<LangProvider>(builder: (context, data, child) {
      return _isProductSelected
          ? DetailsPage(_selectedIndex)
          : Scaffold(body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return menuUI(constraints);
          }));
    }));
  }

  Widget menuUI(BoxConstraints constraints) {

    var axisCount = 1;
    var current = constraints.maxWidth;
    if (current <= 610) {
      axisCount = 1;
    } else if (current > 610 && current <= 910) {
      axisCount = 2;
    } else if (current > 910 && current <= 1183) {
      axisCount = 3;
    } else {
      axisCount = 4;
    }
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar text
          Text("appBarText".tr(),
              style: TextStyle(
                color: Colors.blue.shade800,
              )),
          const SizedBox(height: 10),

          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.only(top: 20, right: 10, bottom: 20),
                itemCount: meals().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: axisCount,
                  childAspectRatio: 0.92,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return productCard(meals()[index], index);
                }),
          )
        ],
      ),
    );;
  }

  List<Product> meals() {
    List<Product> mealsList = [];
    for (var element in getProducts()) {
      if (element.type == "meals") {
        mealsList.add(element);
      }
    }
    return mealsList;
  }

  List<Product> getProducts() {
    switch (context.locale.toString()) {
      case "uz_UZ":
        {
          return Product.productsUZ;
        }
      case "ru_RU":
        {
          return Product.productsRU;
        }
      case "en_US":
        {
          return Product.productsUS;
        }
      default:
        return Product.productsUZ;
    }
  }

  Widget productCard(Product product, int index){
    final favProvider = Provider.of<FavouriteProvider>(context, listen: false);
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(product.color!),
            ),
            height: 280,
            width: 220,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Container(
                        width: 1.5,
                        height: 10,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 2),

                      // Meal of typename
                      Text(
                        product.state!,
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Meal of name
                  SizedBox(
                    height: 52,
                    child: Text(
                      product.name!,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Meal of cost
                  Row(
                    children: [
                      Text(
                        "cost".tr(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF52616B),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        product.cost!.toString(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF52616B),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "currency".tr(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF52616B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),

                  // time of Meal
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 16,
                            child: Image.asset(
                                "assets/information_logos/bowl.png"),
                          ),
                          const SizedBox(width: 4),
                          Padding(
                              padding: const EdgeInsets.only(top: 4, left: 2),
                              child: Row(
                                children: [
                                  Text(
                                    product.time!.toString(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff11263C),
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    "time".tr(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff11263C),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 16,
                            child: Image.asset(
                                "assets/information_logos/energy_logo.png"),
                          ),
                          const SizedBox(width: 4),
                          Padding(
                              padding: const EdgeInsets.only(top: 4, left: 2),
                              child: Row(
                                children: [
                                  Text(
                                    product.ing!.toString(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff11263C),
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    "ing".tr(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff11263C),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),

                  // Button and select
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () async{
                          List<int> favList = await favProvider.getFavList();
                          var newList = List.of(favList);
                          if( !newList.contains(product.id!-1)){
                            newList.add(product.id!-1);
                            favProvider.isSelectProduct(true);
                          }
                          favProvider.setFavList(newList);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          const Color(0xff2A5270).withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          minimumSize: const Size(40, 40),
                          elevation: 0,
                        ),
                        child: const Icon(
                          Icons.add_circle_outline,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isProductSelected = true;
                              _selectedIndex = product.id!-1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff2A5270),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              minimumSize: const Size(120, 40)),
                          child: Text(
                            "button_name".tr(),
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

        // Meal of picture
        Positioned(
            top: -9,
            right: 30,
            child: Image(
              height: 125,
              image: AssetImage(product.imageUrl!.toString()),
            )),
      ],
    );
  }

}
