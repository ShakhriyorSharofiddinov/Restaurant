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

  double billProducts = 1000000;

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context, listen: false);
    return Consumer<LangProvider>(builder: (context, data, child) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("shop_name".tr(), style: TextStyle(fontSize: 16),),
                    InkWell(
                      splashColor: Colors.transparent,

                      onTap: ()async{
                        List<int> favList = await favProvider.getFavList();
                        var newList = List.of(favList);
                        newList.clear();
                        favProvider.setFavList(newList);
                        setState((){

                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.delete, color: Colors.redAccent,),
                          SizedBox(width: 4,),
                          Text("delete_name".tr(), style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Expanded(
                  child: FutureBuilder(future: favProvider.getFavList(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return productCard(
                                    getProducts()[snapshot.data![index]],
                                    index
                                );
                              });
                        }
                      }),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("cost".tr(), style: TextStyle(fontSize: 22),),
                        Row(
                          children: [
                            Text("$billProducts",style: TextStyle(fontSize: 16),),
                           const  SizedBox(width: 4,),
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
                            )
                        ),
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: "tel",
                            path: "+998996036311"
                          );
                          if(await canLaunchUrl(url)){
                            await launchUrl(url);
                          }else{
                            print("cannot launcher this url");
                          }
                        },
                        child: Text("Dastafka qilish")
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2A5270),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    onPressed: () {
                      setState(() {
                      });
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      );
    });
  }

  Widget productCard(Product product, index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
                height: 80,
                child: Image(image: AssetImage(product.imageUrl!),)
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name!, style: const TextStyle(fontSize: 16),),
                Row(
                  children: [
                    Text(product.cost!.toString()),
                    const SizedBox(width: 4,),
                    Text("currency".tr()),
                  ],
                )
              ],
            ),
           const  Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  onTap: (){
                    setState(() {
                    });
                  },
                  child: const SizedBox(
                      width: 20,
                      child: Image(
                        image: AssetImage("assets/minus.png")
                      )
                  ),
                ),
                Text("1",style: TextStyle(fontSize: 16),),
                InkWell(
                  splashColor: Colors.transparent,
                  onTap: (){
                    setState(() {
                    });
                  },
                  child: const Icon(
                    Icons.add_circle, color:
                    Color(0xff206498),
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
