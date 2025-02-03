import 'package:flutter/material.dart';

import 'app_images.dart';

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xff273B42),
        flexibleSpace: Center(
          child: Row(
            children: [
              SizedBox(width: 40),
              AppImages(
                "travel_logo.svg",
                height: 45,
                width: 45,
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                "Travel",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffE2817A),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                      dividerHeight: 0,
                      indicatorColor: Color(0xffE2817A),
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.white,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      tabs: [
                        Text("Home"),
                        Text("Store"),
                        Text("Trips"),
                        Text("Contact"),
                      ]),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Login"),
                style: OutlinedButton.styleFrom(
                    fixedSize: Size.fromHeight(54),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              SizedBox(
                width: 16,
              ),
              FilledButton(
                onPressed: () {},
                child: Text("Sign up"),
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xffE2817A),
                  fixedSize: Size.fromHeight(54),
                ),
              ),
              SizedBox(
                width: 24,
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          AppImages(
            "travel.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(.25),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: FractionallySizedBox(
                widthFactor: .4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Adventure starts here",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "join our exclusive group and get access to special hiking trips and receive monthly discounts",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintText: "Enter your email here...",
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,

                            suffixIcon: Padding(
                              padding:  EdgeInsets.all(6),
                              child: FilledButton(
                                onPressed: () {},
                                child: Text("Join Now"),
                                style: FilledButton.styleFrom(
                                  backgroundColor: Color(0xffE2817A),
                                  fixedSize: Size.fromHeight(54),
                                ),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
