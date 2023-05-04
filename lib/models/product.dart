class Product {
  int? id;
  String? name;
  String? imageUrl;
  int? color;
  int? time;
  int? ing;
  int? calorie;
  double? cost;
  String? type;
  String? state;
  String? information;

  Product({
    this.id,
    this.name,
    this.imageUrl,
    this.color,
    this.time,
    this.ing,
    this.calorie,
    this.cost,
    this.type,
    this.state,
    this.information,
  });

  static List<Product> productsRU = [
    Product(
      id: 1,
      name: "Hазвание еды",
      imageUrl: "assets/product_pictures/soup.png",
      color: 0xffF2DFE1,
      time: 20,
      ing: 5,
      calorie: 485,
      cost: 500,
      state: "узбекский",
      type: "meals",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
    ),
    Product(
      id: 2,
      name: "Hазвание еды",
      imageUrl: "assets/product_pictures/botqa.png",
      color: 0xffDCC7B1,
      time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "meals",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
    ),
    Product(
      id: 3,
      name: "Hазвание еды",
      imageUrl: "assets/product_pictures/lagman.png",
      color: 0xffFFC5A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
        state: "узбекский",
        type: "meals",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 4,
      name: "Hапитки",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xff71C3A1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "drinks",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 5,
      name: "Hапитки",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xffA8B6FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "drinks",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",

    ),
    Product(
      id: 6,
      name: "Hапитки",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xffFFE7A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "drinks",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 7,
      name: "Салаты",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffCEA8FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "salads",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 8,
      name: "Салаты",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffA8FFB1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "salads",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 9,
      name: "Салаты",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffFFA8A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "salads",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 10,
      name: "Фастфуд",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffA8FFB1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "fastFoods",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 11,
      name: "Фастфуд",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffFFA8A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "fastFoods",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
    Product(
      id: 12,
      name: "Фастфуд",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffA8B6FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 500,
      state: "узбекский",
        type: "fastFoods",
      information: "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.\n\nНе беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",


    ),
  ];

  static List<Product> productsUS = [
    Product(
      id: 1,
      name: "Meals",
      imageUrl: "assets/product_pictures/soup.png",
      color: 0xffF2DFE1,
      time: 20,
      ing: 5,
      calorie: 485,
      cost: 10,
      state: "uzbek",
      type: "meals",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",
    ),
    Product(
      id: 2,
      name: "Meals",
      imageUrl: "assets/product_pictures/botqa.png",
      color: 0xffDCC7B1,
      time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "meals",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",
    ),
    Product(
      id: 3,
      name: "Meals",
      imageUrl: "assets/product_pictures/lagman.png",
      color: 0xffFFC5A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "meals",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 4,
      name: "Drinks",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xff71C3A1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "drinks",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 5,
      name: "Drinks",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xffA8B6FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "drinks",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",

    ),
    Product(
      id: 6,
      name: "Drinks",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xffFFE7A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "drinks",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 7,
      name: "Salades",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffCEA8FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "salads",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 8,
      name: "Salades",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffA8FFB1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "salads",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 9,
      name: "Salades",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffFFA8A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "salads",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 10,
      name: "Fast foods",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffA8FFB1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "fastFoods",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 11,
      name: "Fast foods",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffFFA8A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "fastFoods",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
    Product(
      id: 12,
      name: "Fast foods",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffA8B6FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 10,
      state: "uzbek",
        type: "fastFoods",
      information: "No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy normal lamb at the bazaar, everyone buys shish kebabs on the vine.\n\nIt doesn’t matter if the hands grow from the right place, the barbecue can be prepared from what these kites left us. Let's cook lamb ribs. Not those pieces where there is the most meat, but those pieces that were left after the locust raid",


    ),
  ];

  static List<Product> productsUZ = [
    Product(
      id: 1,
      name: "Ovqatlar",
      imageUrl: "assets/product_pictures/soup.png",
      color: 0xffF2DFE1,
      time: 20,
      ing: 5,
      calorie: 485,
      cost: 100000,
      state: "o'zbek",
      type: "meals",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",
    ),
    Product(
      id: 2,
      name: "Ovqatlar",
      imageUrl: "assets/product_pictures/botqa.png",
      color: 0xffDCC7B1,
      time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "meals",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",
    ),
    Product(
      id: 3,
      name: "Ovqatlar",
      imageUrl: "assets/product_pictures/lagman.png",
      color: 0xffFFC5A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "meals",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 4,
      name: "Ichimliklar",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xff71C3A1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "drinks",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 5,
      name: "Ichimliklar",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xffA8B6FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "drinks",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",

    ),
    Product(
      id: 6,
      name: "Ichimliklar",
      imageUrl: "assets/product_pictures/drink1.png",
      color: 0xffFFE7A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "drinks",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 7,
      name: "Saladlar",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffCEA8FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "salads",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 8,
      name: "Saladlar",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffA8FFB1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "salads",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 9,
      name: "Saladlar",
      imageUrl: "assets/product_pictures/salad.png",
      color: 0xffFFA8A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "salads",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 10,
      name: "Tez ovqatlar",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffA8FFB1,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "fastFoods",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 11,
      name: "Tez ovqatlar",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffFFA8A8,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "fastFoods",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
    Product(
      id: 12,
      name: "Tez ovqatlar",
      imageUrl: "assets/product_pictures/combo.png",
      color: 0xffA8B6FF,
        time: 30,
        ing: 5,
        calorie: 485,
      cost: 100000,
      state: "o'zbek",
        type: "fastFoods",
      information: "Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.\n\nQo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. Eng ko'p go'sht bo'lgan bo'laklar emas, balki chigirtka bosqinidan keyin qolgan qismlar",


    ),
  ];



}