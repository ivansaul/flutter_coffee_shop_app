import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0F14),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, top: 30, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 28),
              Text(
                'Find the best',
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'coffe for you',
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 1.8,
                ),
              ),
              const SizedBox(height: 28),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 60,
                // width: 150,
                decoration: const BoxDecoration(
                  color: Color(0xff141821),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Color(0xff4D515A),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Find your coffee...',
                          hintStyle: TextStyle(
                            color: Color(0xff4D515A),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomContainer(
          width: 45,
          height: 45,
          child: Icon(
            Icons.favorite,
            color: Color(0xff4D515A),
          ),
        ),
        const Spacer(),
        CustomContainer(
          width: 45,
          height: 45,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://i.imgur.com/uTjWuc8.jpg',
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
