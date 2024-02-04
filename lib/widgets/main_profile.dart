import 'dart:io';

import 'package:crypto_app/widgets/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainProfile extends StatelessWidget {
  MainProfile();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'cryptocurrency rates',
//       theme: ThemeData(
//         //colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade300),
//         scaffoldBackgroundColor: Colors.black26,
//         textTheme: const TextTheme(),
//         useMaterial3: true,
//       ),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Builder(builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                );
              }),
              // flexibleSpace: const FlexibleSpaceBar(
              //   title: Text("test"),
              // ),
              //floating: true,
              //pinned: true,

              title: const Text.rich(
                TextSpan(
                  //style: TextStyle(textBaseline: TextBaseline),
                  children: [
                    WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.yellowAccent,
                            size: 44,
                          ),
                        ),
                        alignment: PlaceholderAlignment.middle),
                    TextSpan(
                      text: 'Cryptocurrency Rates',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.black,
              centerTitle: true,
              toolbarHeight: Platform.isAndroid ? 90 : 80,
              // bottom: const PreferredSize(
              //   preferredSize: Size.fromHeight(30),
              //   child: Column(
              //     children: [],
              //   ),
              // ),
              //expandedHeight: 360,
            ),
            SliverList.separated(
              itemCount: 10,
              itemBuilder: (context, i) => ListTile(
                  leading: SvgPicture.asset(
                    'assets/images/btc_logo.svg',
                    width: 40,
                    height: 45,
                  ),
                  trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const InfoAboutCoin()));
                      }),
                  title: const Text(
                    'BitCoin',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  subtitle: const Text('Price: 40,101.75 \$',
                      style: TextStyle(color: Colors.white54))),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(color: Colors.grey),
            ),
          ],
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.grey,
      ),
    );
  }
}

class InfoAboutCoin extends StatelessWidget {
  const InfoAboutCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Bitcoin',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 26),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/btc_logo.svg',
                width: 250,
                height: 250,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Bitcoin(Btc)',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 30),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price:',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                    //style: Theme.of(context).textTheme?.headlineLarge,
                  ),
                  SizedBox(width: 15),
                  Text(
                    '40,101.75 \$',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 30),
                  ),
                ],
              ),
              // MaterialButton()
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(37, 37, 37, 100))),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Buy ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              )
              // const SizedBox(
              //   height: 170,
              //   width: 170,
              //   child: FittedBox(
              //     child: FloatingActionButton.extended(
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
              //       onPressed: null,
              //       backgroundColor: Color.fromRGBO(37, 37, 37, 100),
              //       icon: Icon(
              //         Icons.attach_money,
              //         size: 20,
              //       ),
              //       label: Text(
              //         "Buy",
              //         style:
              //             TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

// appBar: AppBar(
//     //backgroundColor: Colors.blue.shade700,
//     backgroundColor: Colors.black,
//     foregroundColor: Colors.yellowAccent,
//     titleTextStyle:
//         const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
//     title: Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Icon(
//             Icons.monetization_on_outlined,
//             size: 36,
//           ),
//           const SizedBox(width: 3),
//           Text(widget.title),
//         ],
//       ),
//     ),
//     centerTitle: true),
//       body: ListView.separated(
//         itemCount: 15,
//         itemBuilder: (context, i) => ListTile(
//             title: Text(
//               'YoptaCoin',
//               style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 20,
//                   color: Colors.white),
//             ),
//             subtitle:
//                 Text('Цена : ДОХУЯ', style: TextStyle(color: Colors.white54))),
//         separatorBuilder: (BuildContext context, int index) => Divider(),
//       ),
//     );
//   }
// }
