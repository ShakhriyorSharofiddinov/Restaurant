import 'dart:ffi';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/product.dart';
import '../../provider/favourite.dart';
import '../../provider/lang.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {

  int getCounter(int number, List<int> list ){
    int count = 0;
    for(var element in list){
      if(element == number){
        count++;
      }
    }
    return count;
  }

  int getAnotherProduct(int number, List<int> list ){
    int count = 0;
    int answer = 0;
    if(number == 0){
      answer = list[0];
    }
    for (int i = 1; i < list.length; i++) {
      if (list[i - 1] != list[i]) {
        count++;
        if(count == number){
          answer = list[i];
          break;
        }
      }
    }
    return answer;
  }

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context, listen: false);
    return Consumer<LangProvider>(builder: (context, data, child) {
      return WillPopScope(
          onWillPop: () {
            favProvider.getSelectedFavPage()
                ? setState(() {
                    favProvider.isSelectedFavPage(false);
                  })
                : exit(0);
            return Future.value(false);
          },
          child: Scaffold(
              body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "shop_name".tr(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () async {
                          List<int> favList = await favProvider.getFavList();
                          var newList = List.of(favList);
                          newList.clear();
                          favProvider.setFavList(newList);
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.delete,
                              color: Colors.redAccent,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "delete_name".tr(),
                              style: const TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: FutureBuilder(
                        future: favProvider.getFavList(),
                        builder: (context, snapshot) {
                          int counterProduct = 0;
                          if (snapshot.data!.isEmpty) {
                            return const Center(
                                child: Icon(
                                  Icons.hourglass_empty,
                                  size: 40,
                                ));
                          } else {
                            for (int i = 1; i < snapshot.data!.length; i++) {
                              if (getProducts()[snapshot.data![i - 1]].id !=
                                  getProducts()[snapshot.data![i]].id) {
                                counterProduct++;
                              }
                            }
                            counterProduct++;
                            return ListView.builder(
                                itemCount: counterProduct,
                                itemBuilder: (BuildContext context, int index) {
                                  int counter = getCounter(getAnotherProduct(index, snapshot.data!), snapshot.data!);
                                  // favProvider.increment(getProducts()[getAnotherProduct(index, snapshot.data!)].cost! * counter);
                                  return productCard(
                                      getProducts()[getAnotherProduct(index, snapshot.data!)],
                                      getAnotherProduct(index, snapshot.data!),counter);
                                });
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "total_amount".tr(),
                              style: const TextStyle(fontSize: 18),
                            ),
                            Row(
                              children: [
                                Text(
                                  // "${context.watch<FavouriteProvider>().getBill}",
                                  "1000000",
                                  style: const TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text("currency".tr()),
                              ],
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff2A5270),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  )),
                              onPressed: () async {
                                final Uri url =
                                    Uri(scheme: "tel", path: "+998996036311");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print("cannot launcher this url");
                                }
                              },
                              child: Text("delivery".tr())),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )));
    });
  }

  Widget productCard(Product product, index, counter) {
    final favProvider = Provider.of<FavouriteProvider>(context, listen: false);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
                height: 70,
                child: Image(
                  image: AssetImage(product.imageUrl!),
                )),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name!,
                  style: const TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    Text(product.cost!.toString()),
                    const SizedBox(
                      width: 4,
                    ),
                    Text("currency".tr()),
                  ],
                )
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  onTap: () async {
                    List<int> favList = await favProvider.getFavList();
                    var newList = List.of(favList);
                    newList.remove(product.id!-1);
                    favProvider.setFavList(newList);

                    setState(() {

                    });
                  },
                  child: const SizedBox(
                      width: 20,
                      child: Image(image: AssetImage("assets/minus.png"))),
                ),
                Text(
                  counter.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  onTap: () async {
                    List<int> favList = await favProvider.getFavList();
                    var newList = List.of(favList);
                    newList.add(product.id!-1);
                    favProvider.setFavList(newList);
                    setState(() {

                    });
                  },
                  child: const Icon(
                    Icons.add_circle,
                    color: Color(0xff206498),
                    size: 26,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
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
}
