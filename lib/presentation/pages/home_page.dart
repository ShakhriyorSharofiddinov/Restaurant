import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/lang.dart';
import '../../provider/favourite.dart';
import '../../provider/lang.dart';
import 'favourite.dart';
import 'menu_pages/drink.dart';
import 'menu_pages/fast_food.dart';
import 'menu_pages/meals.dart';
import 'menu_pages/salade.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectLang;
  int _selectedIndex = 0;

  final _pages = [
    const MealsPage(),
    const SaladsPage(),
    const DrinksPage(),
    const FastFoodsPage(),
    const FavouritePage()
  ];

  final List<Lang> languages = [
    Lang("uz", true),
    Lang("ru", false),
    Lang("en", false),
  ];

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context, listen: false);
    return Consumer<LangProvider>(builder: (context, data, child) {
      return Scaffold(
        body: Row(
          children: [
            LayoutBuilder(builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: NavigationRail(
                      leading: langBuild(),
                      onDestinationSelected: (int index) {
                        setState(() {
                          _selectedIndex = index;
                          favProvider.isSelectedFavPage(false);
                        });
                      },
                      unselectedLabelTextStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white54,
                      ),
                      selectedLabelTextStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      labelType: NavigationRailLabelType.all,
                      backgroundColor: const Color(0xff2A5270),
                      selectedIndex: _selectedIndex,
                      destinations: [
                        NavigationRailDestination(
                            icon: const SizedBox(),
                            label: RotatedBox(
                              quarterTurns: -1,
                              child: Text("meals".tr()),
                            )),
                        NavigationRailDestination(
                            icon: const SizedBox(),
                            label: RotatedBox(
                              quarterTurns: -1,
                              child: Text("salads".tr()),
                            )),
                        NavigationRailDestination(
                            icon: const SizedBox(),
                            label: RotatedBox(
                              quarterTurns: -1,
                              child: Text("drinks".tr()),
                            )),
                        NavigationRailDestination(
                            icon: const SizedBox(),
                            label: RotatedBox(
                              quarterTurns: -1,
                              child: Text("fast_foods".tr()),
                            )),
                      ],
                    ),
                  ),
                ),
              );
            }),
            Expanded(
              child: favProvider.getSelectedFavPage()
                  ? FavouritePage()
                  : _pages[_selectedIndex],
            ),
          ],
        ),
      );
    });
  }

  void setCurrentLangButton() {
    switch (context.locale.toString()) {
      case "uz_UZ":
        {
          for (var element in languages) {
            if (element.name == "uz") {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          }
        }
        break;
      case "ru_RU":
        {
          for (var element in languages) {
            if (element.name == "ru") {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          }
        }
        break;
      case "en_US":
        {
          for (var element in languages) {
            if (element.name == "en") {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          }
        }
        break;
    }
  }

  Widget langBuild() {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    final favProvider = Provider.of<FavouriteProvider>(context, listen: false);
    setCurrentLangButton();

    return Column(
      children: [
        const Image(
          image: AssetImage("assets/home_page_logo.png"),
          height: 100,
        ),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            setState(() {
              favProvider.isSelectedFavPage(true);
              favProvider.isSelectProduct(false);
            });
          },
          child: SizedBox(
            height: 34,
            child: Stack(clipBehavior: Clip.none, children: [
              const Image(
                image: AssetImage("assets/likeIcon.png"),
              ),
              Positioned(
                top: -13,
                right: -13,
                child: context.watch<FavouriteProvider>().getSelectProduct()
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: Icon(
                          Icons.circle_notifications_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    :Container(),
              )
            ]),
          ),
        ),
        const SizedBox(height: 10),
        ToggleButtons(
          isSelected: languages.map((e) => e.isActive!).toList(),
          direction: Axis.vertical,
          borderColor: Colors.transparent,
          fillColor: Colors.transparent,
          highlightColor: Colors.transparent,
          selectedBorderColor: Colors.transparent,
          onPressed: (int index) {
            setState(() {
              for (var element in languages) {
                element.isActive = false;
              }
              switch (index) {
                case 0:
                  {
                    context.setLocale(const Locale("uz", "UZ"));
                    langProvider.langChanged();
                  }
                  break;
                case 1:
                  {
                    langProvider.langChanged();
                    context.setLocale(const Locale("ru", "RU"));
                  }
                  break;
                case 2:
                  {
                    langProvider.langChanged();
                    context.setLocale(const Locale("en", "US"));
                  }
                  break;
              }
              languages[index].isActive = true;
            });
          },
          children: [
            langButton(languages[0]),
            langButton(languages[1]),
            langButton(languages[2]),
          ],
        ),
      ],
    );
  }

  Widget langButton(Lang lang) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: lang.isActive! ? const Color(0xff206498) : Colors.white10,
      ),
      child: Center(
        child: Text(
          lang.name!,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
