
import 'package:ejemploseccion6/theme/app_theme.dart';
import 'package:flutter/material.dart';


class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Slider & Checks')),
      ),
      body: Column(
        children: [

          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
              ? ( value ) {
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

           SwitchListTile.adaptive(
             activeColor: AppTheme.primary,
             title: const Text('Habilitar Slider'),
               value: _sliderEnabled,
               onChanged: (value )=> setState(() { _sliderEnabled = value;}),
               ),

           Image(
              image: const NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1dbc1935-6542-4ee3-822f-135cff4ba62c/dfa0ii5-17e35074-d5eb-4719-9584-b93b739ddfd9.png/v1/fill/w_1024,h_1500,strp/love_and_thunder_s_thor___transparent__by_speedcam_dfa0ii5-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTUwMCIsInBhdGgiOiJcL2ZcLzFkYmMxOTM1LTY1NDItNGVlMy04MjJmLTEzNWNmZjRiYTYyY1wvZGZhMGlpNS0xN2UzNTA3NC1kNWViLTQ3MTktOTU4NC1iOTNiNzM5ZGRmZDkucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Ex00jRK9EEJHrsYM3xqNSg_ZTsyGVo4HGs93Vc7vZ_o'),
              fit: BoxFit.contain,
              width: _sliderValue,
          ),

        ],
      )
    );
  }
}