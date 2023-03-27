class Catagiries {
  String pic;
  String name;

  Catagiries(
    this.pic,
    this.name,
  );

  static List<Catagiries> generatedList() {
    return [
      Catagiries(
        'images/gv.png',
        'Government',
      ),
      Catagiries(
        'images/other.png',
        'Others',
      ),
      // Catagiries(
      //   'images/beximco.jpg',
      //   'Beximco',
      // ),
      // Catagiries(
      //   'images/Others.jpg',
      //   'Ibna Sina',
      // ),
    ];
  }
}

class Vaccine {
  String pic;
  String name;

  double price;
  bool isChoice;
  Vaccine(this.pic, this.name, this.price, this.isChoice);
  static List<Vaccine> ganaratedList() {
    return [
      Vaccine('images/vc1.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc2.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc3.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc4.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc5.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc6.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc7.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc11.jpg', 'Govt. ', 0, false),
      Vaccine('images/vc1.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc2.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc3.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc4.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc5.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc6.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc7.jpeg', 'Govt. ', 0, false),
      Vaccine('images/vc11.jpg', 'Govt. ', 0, false),
    ];
  }
}

class Others {
  String name;
  String pic;
  double price;
  bool isChoice;

  Others(this.pic, this.name, this.price, this.isChoice);
  static List<Others> ganaratedList() {
    return [
      Others('images/svc1.jpg', 'Espa ', 399, false),
      Others('images/svc2.jpg', 'Kop ', 230, false),
      Others('images/svc3.png', 'Bipen ', 499, false),
      Others('images/svc4.jpeg', 'Hyponor ', 150, false),
      Others('images/svc5.jpg', 'Antihista ', 215, false),
      Others('images/svc1.jpg', 'Espa ', 399, false),
      Others('images/svc2.jpg', 'Kop ', 230, false),
      Others('images/svc3.png', 'Bipen. ', 499, false),
      Others('images/svc4.jpeg', 'Hypon', 150, false),
      Others('images/svc5.jpg', 'Antihista ', 215, false),
      Others('images/svc1.jpg', 'Espa ', 399, false),
      Others('images/svc2.jpg', 'Kop ', 230, false),
      Others('images/svc3.png', 'Bipen ', 499, false),
      Others('images/svc4.jpeg', 'Hyponor ', 150, false),
      Others('images/svc5.jpg', 'Antihista ', 215, false),
      Others('images/svc1.jpg', 'Espa ', 399, false),
      Others('images/svc2.jpg', 'Kop ', 230, false),
      Others('images/svc3.png', 'Bipen. ', 499, false),
      Others('images/svc4.jpeg', 'Hypon', 150, false),
      Others('images/svc5.jpg', 'Antihista ', 215, false),
      Others('images/svc1.jpg', 'Espa ', 399, false),
      Others('images/svc2.jpg', 'Kop ', 230, false),
      Others('images/svc3.png', 'Bipen ', 499, false),
      Others('images/svc4.jpeg', 'Hyponor ', 150, false),
      Others('images/svc5.jpg', 'Antihista ', 215, false),
      Others('images/svc1.jpg', 'Espa ', 399, false),
      Others('images/svc2.jpg', 'Kop ', 230, false),
      Others('images/svc3.png', 'Bipen. ', 499, false),
      Others('images/svc4.jpeg', 'Hypon', 150, false),
      Others('images/svc5.jpg', 'Antihista ', 215, false),
    ];
  }
}

class AllVaccineList {
  String name;
  String pic;
  double price;
  bool isChoice;
  AllVaccineList(this.pic, this.name, this.price, this.isChoice);
  static List<AllVaccineList> ganaratedList() {
    return [
      AllVaccineList('images/svc1.jpg', 'Espa ', 0, false),
      AllVaccineList('images/svc2.jpg', 'Kop ', 0, false),
      AllVaccineList('images/svc3.png', 'Bipen ', 0, false),
      AllVaccineList('images/svc4.jpeg', 'Hyponor ', 0, false),
      AllVaccineList('images/svc5.jpg', 'Antihista ', 0, false),
      AllVaccineList('images/svc1.jpg', 'Espa ', 0, false),
      AllVaccineList('images/svc2.jpg', 'Kop ', 0, false),
      AllVaccineList('images/svc3.png', 'Bipen. ', 0, false),
      AllVaccineList('images/svc4.jpeg', 'Hypon', 0, false),
      AllVaccineList('images/svc5.jpg', 'Antihista ', 0, false),
      AllVaccineList('images/vc1.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc2.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc3.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc4.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc5.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc6.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc7.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc11.jpg', 'Govt. ', 0, false),
      AllVaccineList('images/vc1.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/vc2.jpeg', 'Govt. ', 0, false),
      AllVaccineList('images/svc1.jpg', 'Espa ', 0, false),
      AllVaccineList('images/svc2.jpg', 'Kop ', 0, false),
      AllVaccineList('images/svc3.png', 'Bipen ', 0, false),
      AllVaccineList('images/svc4.jpeg', 'Hypon ', 0, false),
      AllVaccineList('images/vc3.jpeg', 'Govt. ', 0, false),
    ];
  }
}

class OrderNow {
  String img;
  String name;
  String rating;
  double price;
  int qt = 0;
  int? totalPrice;
  OrderNow(this.img, this.name, this.rating, this.price);
  static List<OrderNow> generatedList() {
    return [
      OrderNow('images/vc3.jpeg', 'Menem ', '⭐⭐ 4.9', 100),
      OrderNow(
        'images/vc3.jpeg',
        'Cytoc ',
        '⭐⭐ 4.9',
        200,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Mpen ',
        '⭐⭐ 4.9',
        400,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Menem ',
        '⭐⭐ 4.9',
        100,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Cytoc ',
        '⭐⭐ 4.9',
        200,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Menem ',
        '⭐⭐ 4.9',
        100,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Cytoc ',
        '⭐⭐ 4.9',
        200,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Mpen ',
        '⭐⭐ 4.9',
        400,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Menem ',
        '⭐⭐ 4.9',
        100,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Cytoc ',
        '⭐⭐ 4.9',
        200,
      ),
      OrderNow(
        'images/svc1.jpg',
        'Espa ',
        '⭐⭐ 4.9',
        399,
      ),
      OrderNow(
        'images/svc2.jpg',
        'Kop ',
        '⭐⭐ 4.9',
        230,
      ),
      OrderNow(
        'images/svc3.png',
        'Bipen ',
        '⭐⭐ 4.9',
        499,
      ),
      OrderNow(
        'images/svc5.jpg',
        'Antihista ',
        '⭐⭐ 4.9',
        215,
      ),
      OrderNow(
        'images/svc1.jpg',
        'Espa ',
        '⭐⭐ 4.9',
        399,
      ),
      OrderNow(
        'images/svc2.jpg',
        'Kop ',
        '⭐⭐ 4.9',
        230,
      ),
      OrderNow(
        'images/svc3.png',
        'Bipen. ',
        '⭐⭐ 4.9',
        499,
      ),
      OrderNow(
        'images/svc4.jpeg',
        'Hypon',
        '⭐⭐ 4.9',
        150,
      ),
      OrderNow(
        'images/svc5.jpg',
        'Antihista ',
        '⭐⭐ 4.9',
        215,
      ),
      OrderNow(
        'images/vc1.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc2.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc4.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc5.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc6.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc7.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc11.jpg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc2.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Menem ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Cytoc ',
        '⭐⭐ 4.9',
        0,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Mpen ',
        '⭐⭐ 4.9',
        400,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Menem ',
        '⭐⭐ 4.9',
        100,
      ),
      OrderNow(
        'images/svc1.jpg',
        'Espa ',
        '⭐⭐ 4.9',
        399,
      ),
      OrderNow(
        'images/svc2.jpg',
        'Kop ',
        '⭐⭐ 4.9',
        230,
      ),
      OrderNow(
        'images/svc3.png',
        'Bipen ',
        '⭐⭐ 4.9',
        499,
      ),
      OrderNow(
        'images/svc4.jpeg',
        'Hypon ',
        '⭐⭐ 4.9',
        150,
      ),
      OrderNow(
        'images/vc3.jpeg',
        'Govt. ',
        '⭐⭐ 4.9',
        0,
      ),
    ];
  }
}
