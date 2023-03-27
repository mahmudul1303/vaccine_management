import 'package:day_13/Model/model.dart';
import 'package:day_13/screen/vaccine_list.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookingVaccine extends StatefulWidget {
  //const BookingVaccine({super.key});

  @override
  State<BookingVaccine> createState() => _BookingVaccineState();
}

class _BookingVaccineState extends State<BookingVaccine> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final order = OrderNow.generatedList();
  Map vaccineQuantity(Vaccine) {
    var quantity = Map();
    Vaccine.forEach((Vaccine) {
      if (!quantity.containsKey(Vaccine)) {
        quantity[Vaccine] = 1;
      } else {
        quantity[Vaccine] += 1;
      }
    });
    return quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF5A9F2),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => VaccineList()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Vaccination System"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: Icon(Icons.menu))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                color: Color(0xffF8E0F7),
                child: ListView.builder(
                  itemCount: order.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(5),
                    height: 160,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          color: Color(0xffF8E0F7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              order[index].img,
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Container(
                                //width: double.infinity,
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    //border: Border.all(width: 2),
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      order[index].name,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      order[index].rating,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Text(
                                          '\$${order[index].price}',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                order[index].qt > 0
                                                    ? order[index].qt--
                                                    : order[index].qt;
                                                order[index].totalPrice! >=
                                                        order[index].price
                                                    ? order[index].totalPrice =
                                                        order[index]
                                                                .totalPrice! -
                                                            order[index]
                                                                .price
                                                                .toInt()
                                                    : order[index].totalPrice;
                                                getTotalPrice();
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            height: 5,
                                            minWidth: 5,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text('${order[index].qt}',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                order[index].qt++;

                                                order[index].totalPrice =
                                                    order[index].price.toInt() *
                                                        order[index].qt;
                                                getTotalPrice();
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            height: 5,
                                            minWidth: 5,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF5A9F2),
                  // borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Extra Charge',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$00.00',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Charge:',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${totalprice * 0}',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VaccineList()));
                        });
                      },
                      child: Text(
                        'Order More',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      color: Colors.white,
                      minWidth: 250,
                      height: 50,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        // Expanded(
                        //   child: MaterialButton(
                        //     onPressed: () {
                        //       setState(() {});
                        //     },
                        //     // child: Text(
                        //     //   'PAY ${totalprice + 90}',
                        //     //   style: TextStyle(
                        //     //       fontSize: 20,
                        //     //       fontWeight: FontWeight.bold,
                        //     //       color: Colors.black),
                        //     // ),
                        //     color: Colors.white,
                        //     minWidth: 250,
                        //     height: 50,
                        //   ),
                        // ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          "Please wait for approval.When approve you will get SMS",
                                          style: TextStyle(
                                              color: Colors.redAccent),
                                        ),
                                      );
                                    });
                              });
                            },
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            color: Colors.white,
                            minWidth: 250,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }

  double totalprice = 0;
  getTotalPrice() {
    double total = 0;
    order.forEach((qt) {
      total += qt.totalPrice ?? qt.price;
    });
    setState(() {
      totalprice = total * 0;
      // print('mmmmmmmmmmmmmmmmm${totalprice}');
    });
  }

  void initState() {
    getTotalPrice();
    super.initState;
  }
}
