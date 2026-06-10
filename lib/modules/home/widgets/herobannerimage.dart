import 'dart:async';
import 'package:flutter/material.dart';

class HeroBannerSection extends StatefulWidget {
  final List<String> bannerImages;

  const HeroBannerSection({
    super.key,
    required this.bannerImages,
  });

  @override
  State<HeroBannerSection> createState() => _HeroBannerSectionState();
}

class _HeroBannerSectionState extends State<HeroBannerSection> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();

    _timer = Timer.periodic(
      const Duration(seconds: 3),
          (_) {
        if (_pageController.hasClients) {
          _currentPage++;

          if (_currentPage >= widget.bannerImages.length) {
            _currentPage = 0;
          }

          _pageController.animateToPage(
            _currentPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [

            /// IMAGE SLIDER
            PageView.builder(
              controller: _pageController,
              itemCount: widget.bannerImages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  widget.bannerImages[index],
                  fit: BoxFit.cover,
                );
              },
            ),

            /// DARK OVERLAY
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.10),
                    Colors.black.withOpacity(.45),
                  ],
                ),
              ),
            ),

            /// CONTENT
        

            /// INDICATORS
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(


                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(

                    widget.bannerImages.length,
                        (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      width: _currentPage == index ? 18 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? Colors.white
                            : Colors.white54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}