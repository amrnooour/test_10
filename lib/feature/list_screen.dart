import 'package:flutter/material.dart';
import 'package:test_10/core/constatnts.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = false;

  



  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF222431),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20,
          ),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                   Future.delayed(const Duration(milliseconds: 500), () {
                     setState(() {
                       startAnimation = true;
                    });
                   });
                },
                child: const Text(
                  "SHOW LIST",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: Constatnts.imagesUrl.length,
                itemBuilder: (context, index) {
                  return item(index);
                },
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(int index) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (index * 200)),
      transform: Matrix4.translationValues(startAnimation ? -150 : screenWidth, 0, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: CircleAvatar(
          radius: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(Constatnts.imagesUrl[index],fit: BoxFit.cover,)),
        ),
      ),
    );
  }

}