import 'package:flutter/material.dart';
import 'package:stackapp/views/screens/utills.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(flexibleSpace: FlexibleSpaceBar(),
        leading: Container(),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: height * 0.210,
            width: width,
            padding: EdgeInsets.only(
              top: height * 0.015,
              bottom: height * 0.010,
              right: height * 0.015,
              left: height * 0.015,
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  width * 0.050,
                ),
                bottomLeft: Radius.circular(
                  width * 0.050,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: height * 0.030,
                    ),
                    const Icon(
                      Icons.notification_add_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.020,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hello Programmer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.030,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.020),
                Container(
                  height: height * 0.055,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      width * 0.010,
                    ),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here..",
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: categoryname.length,
                  itemBuilder: (context, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.098,
                          width: width * 0.098,
                          decoration: BoxDecoration(
                            color: categorycolor[i],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            categoryicon[i],
                            color: Colors.white,
                            size: height * 0.030,
                          ),
                        ),
                        Text(
                          categoryname[i],
                        ),
                      ],
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  shrinkWrap: true,
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ],
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imagelist.length,
                  itemBuilder: (context, i) {
                    return Container(
                      height: height * 0.050,
                      width: width * 0.050,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            imagelist[i],
                          ),
                        ),
                      ),
                    );
                  },
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
