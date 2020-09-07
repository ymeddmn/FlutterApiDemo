import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class SplashAnimWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashAnimState();
  }
}

class SplashAnimState extends CommonState<SplashAnimWidget>
    with TickerProviderStateMixin {
  double width, height;
  bool alphaAnim = false;

  AnimationController controller;

  Animation animation;
  double _factor;

  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(milliseconds: 1000), vsync: this)
          ..addStatusListener((status) {})
          ..addListener(() {
            listenAnim();
          })
          ..forward();
    animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        alphaAnim = true;
      });
    });
    super.initState();
  }

  @override
  Widget getBody() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width,
          height: height,
          child: CustomPaint(
            painter: UnitPainter(200, _factor),
          ),
        ),
        _buildLogo(),
        _buildText(),
        _buildHeader(),
      ],
    );
  }

  _buildText() {
    var _style = TextStyle(
        color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 45);
    return Positioned(
        top: height / 1.4,
        child: AnimatedOpacity(
          opacity: alphaAnim ? 1 : 0,
          duration: Duration(seconds: 2),
          child: Text(
            '马哥Flutter',
            style: _style,
          ),
        ));
  }

  _buildHeader() {
    return SlideTransition(
      position:
          Tween<Offset>(begin: const Offset(0, -5), end: const Offset(0, 0))
              .animate(controller),
      child: Container(
        child: RotationTransition(
          turns: controller,
          child: ClipOval(
            child: Image.asset(
              'img/head.jpeg',
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }

  _buildLogo() {
    return SlideTransition(
      position: Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -3))
          .animate(controller),
      child: RotationTransition(
        turns: controller,
        child: ScaleTransition(
          scale: Tween<double>(begin: 2, end: 1).animate(controller),
          child: FadeTransition(
            opacity: controller,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void listenAnim() {
    setState(() {
      return _factor = animation.value;
    });
  }
}

class UnitPainter extends CustomPainter {
  double _width;
  double _factor;
  Path path1 = Path();
  Path path2 = Path();
  Path path3 = Path();
  Path path4 = Path();

  UnitPainter(this._width, this._factor);

  @override
  void paint(Canvas canvas, Size size) {
    var sizeW = (size.width - _width) / 2;
    double transX = sizeW * (1 - _factor);
    canvas.translate(size.width / 2, size.height / 2);

    canvas.save();
    canvas.translate(-_width / 2, -_width / 2);
    drawColor1(canvas, transX);
    canvas.restore();

    canvas.save();
    canvas.translate(-_width / 2, _width / 2);
    drawColor2(canvas);
    canvas.restore();

    canvas.save();
    canvas.translate(_width / 2, _width / 2);
    drawColor3(canvas);
    canvas.restore();

    canvas.save();
    canvas.translate(_width / 2, -_width / 2);
    drawColor4(canvas);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  Paint pathPaint = Paint();

  void drawColor1(Canvas canvas, double transX) {
    path1.moveTo(0, 0); //画笔移动到原点，现在原点在左上角
    path1.lineTo((0.618 * _width * _factor - 1), 0);
    path1.lineTo(_width * 0.5 - 1, _width * 0.5 - 1);
    path1.lineTo(0, (1 - 0.618) * _width * _factor);
    canvas.drawPath(_clipAngle(path1, _width / 2, _width / 2),
        pathPaint..color = Colors.red);
  }

  void drawColor2(Canvas canvas) {
    path2.moveTo(0, 0);
    path2.lineTo(0, -(0.618) * _width * _factor + 1);
    path2.lineTo(0.5 * _width - 1, -0.5 * _width + 1);
    path2.lineTo((1 - 0.618) * _width * _factor - 1, 0);
    canvas.drawPath(_clipAngle(path2, _width / 2, -_width / 2),
        pathPaint..color = Colors.green);
  }

  void drawColor3(Canvas canvas) {
    path3.moveTo(0, 0);
    path3.lineTo(-(0.618) * _width * _factor + 1, 0);
    path3.lineTo(-_width * 0.5 + 1, -_width * 0.5 + 1);
    path3.lineTo(0, -(1 - 0.618) * _width * _factor + 1);
    canvas.drawPath(_clipAngle(path3, -_width / 2, -_width / 2),
        pathPaint..color = Colors.blue);
  }

  void drawColor4(Canvas canvas) {
    path4.moveTo(0, 0);
    path4.lineTo(-(1 - 0.618) * _width * _factor + 1, 0);
    path4.lineTo(-_width * 0.5 + 1, _width * 0.5 - 1);
    path4.lineTo(0, _width * 0.618 * _factor - 1);
    canvas.drawPath(_clipAngle(path4, -_width / 2, _width / 2),
        pathPaint..color = Colors.yellow);
  }

  Path _clipAngle(Path path, double x, double y) {
    return Path.combine(PathOperation.difference, path,
        Path()..addOval(Rect.fromCircle(center: Offset(x, y), radius: 30.0)));
  }
}
