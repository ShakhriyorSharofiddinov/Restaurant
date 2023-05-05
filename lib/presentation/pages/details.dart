import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/product.dart';
import '../../provider/lang.dart';

class DetailsPage extends StatefulWidget {
  final int selectedIndex;

  const DetailsPage(this.selectedIndex, {Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LangProvider>(builder: (context, data, child) {
        return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/background.png"))),
          child: myBody(),
        );
      }),
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

  Widget myBody() {
    return Container(
      margin: const EdgeInsets.only(
        top: 110,
        right: 30,
      ),
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          details(),

          // Meal of picture
          Positioned(
              top: -60,
              right: -20,
              child: Image(
                height: 170,
                image: AssetImage(
                    getProducts()[widget.selectedIndex].imageUrl!.toString()),
              )),
        ],
      ),
    );
  }

  Widget details() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 2,
                height: 18,
                color: const Color(0xff1153FC),
              ),
              const SizedBox(width: 6),
              Text(
                getProducts()[widget.selectedIndex].state!,
                style: const TextStyle(
                  color: Color(0xff1153FC),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 60,
            child: Text(
              getProducts()[widget.selectedIndex].name!,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 15,
                    child: Image.asset("assets/information_logos/bowl.png"),
                  ),
                  const SizedBox(width: 4),
                  Padding(
                      padding: const EdgeInsets.only(top: 3, left: 2),
                      child: Row(
                        children: [
                          Text(
                            getProducts()[widget.selectedIndex]
                                .time!
                                .toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff11263C),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            "time".tr(),
                            style: const TextStyle(
                              fontSize: 12,
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
                    child:
                    Image.asset("assets/information_logos/energy_logo.png"),
                  ),
                  const SizedBox(width: 4),
                  Padding(
                      padding: const EdgeInsets.only(top: 3, left: 2),
                      child: Row(
                        children: [
                          Text(
                            getProducts()[widget.selectedIndex].ing!.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff11263C),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            "ing".tr(),
                            style: const TextStyle(
                              fontSize: 12,
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
                    height: 15,
                    child: Image.asset("assets/information_logos/fire.png"),
                  ),
                  const SizedBox(width: 4),
                  Padding(
                      padding: const EdgeInsets.only(top: 3, left: 2),
                      child: Row(
                        children: [
                          Text(
                            getProducts()[widget.selectedIndex]
                                .calorie!
                                .toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff11263C),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            "calorie".tr(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff11263C),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            getProducts()[widget.selectedIndex].information!,
            style: const TextStyle(
              color: Color(0xff52616B),
            ),
          ),


          /// ingredients of product
          // Row(
          //   children: [
          //     Text(
          //       "ingredient".tr(),
          //       style:const TextStyle(
          //         fontSize: 16,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //     const SizedBox(width: 4),
          //     const Text(
          //       "(5)",
          //       style: TextStyle(
          //         fontSize: 16,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ],
          // ),
          // // Expanded(
          // //   child: SizedBox(
          // //     width: double.infinity,
          // //     child: GridView.count(
          // //       crossAxisCount: 3,
          // //       padding: const EdgeInsets.all(0),
          // //       children: [
          // //         Column(
          // //           children: [
          // //             Container(
          // //               decoration: BoxDecoration(
          // //                 borderRadius: BorderRadius.circular(10),
          // //                 color: const Color(0xffF1F1F1),
          // //               ),
          // //               height: 64,
          // //               width: 64,
          // //               child: Padding(
          // //                 padding: const EdgeInsets.all(9.0),
          // //                 child: Image.asset(
          // //                   getProducts()[widget.selectedIndex].imageUrl!,
          // //                 ),
          // //               ),
          // //             ),
          // //             const SizedBox(height: 2),
          // //             const Text(
          // //               "Лапша",
          // //               style: TextStyle(
          // //                 color: Color(0xff52616B),
          // //                 fontSize: 11,
          // //               ),
          // //             )
          // //           ],
          // //         ),
          // //         Column(
          // //           children: [
          // //             Container(
          // //               decoration: BoxDecoration(
          // //                 borderRadius: BorderRadius.circular(10),
          // //                 color: const Color(0xffF1F1F1),
          // //               ),
          // //               height: 64,
          // //               width: 64,
          // //               child: Padding(
          // //                 padding: const EdgeInsets.all(9.0),
          // //                 child: Image.asset(
          // //                   getProducts()[widget.selectedIndex].imageUrl!,
          // //                 ),
          // //               ),
          // //             ),
          // //             const SizedBox(height: 2),
          // //             const Text(
          // //               "Лапша",
          // //               style: TextStyle(
          // //                 color: Color(0xff52616B),
          // //                 fontSize: 11,
          // //               ),
          // //             )
          // //           ],
          // //         ),
          // //         Column(
          // //           children: [
          // //             Container(
          // //               decoration: BoxDecoration(
          // //                 borderRadius: BorderRadius.circular(10),
          // //                 color: const Color(0xffF1F1F1),
          // //               ),
          // //               height: 64,
          // //               width: 64,
          // //               child: Padding(
          // //                 padding: const EdgeInsets.all(9.0),
          // //                 child: Image.asset(
          // //                   getProducts()[widget.selectedIndex].imageUrl!,
          // //                 ),
          // //               ),
          // //             ),
          // //             const SizedBox(height: 2),
          // //             const Text(
          // //               "Лапша",
          // //               style: TextStyle(
          // //                 color: Color(0xff52616B),
          // //                 fontSize: 11,
          // //               ),
          // //             )
          // //           ],
          // //         ),
          // //         Column(
          // //           children: [
          // //             Container(
          // //               decoration: BoxDecoration(
          // //                 borderRadius: BorderRadius.circular(10),
          // //                 color: const Color(0xffF1F1F1),
          // //               ),
          // //               height: 64,
          // //               width: 64,
          // //               child: Padding(
          // //                 padding: const EdgeInsets.all(9.0),
          // //                 child: Image.asset(
          // //                   getProducts()[widget.selectedIndex].imageUrl!,
          // //                 ),
          // //               ),
          // //             ),
          // //             const SizedBox(height: 2),
          // //             const Text(
          // //               "Лапша",
          // //               style: TextStyle(
          // //                 color: Color(0xff52616B),
          // //                 fontSize: 11,
          // //               ),
          // //             )
          // //           ],
          // //         ),
          // //       ],
          // //     ),
          // //   ),
          // // ),
        ],
      ),
    );
  }
}
