import 'package:flutter/material.dart';
import 'package:flutterdemo/bean/beans.dart';
import 'package:flutterdemo/dart/fanxing.dart';
import 'package:flutterdemo/dart/knowlagewidget.dart';
import 'package:flutterdemo/dart/knowledgewidget1.dart';
import 'package:flutterdemo/func/NavigatorFunc.dart';
import 'package:flutterdemo/func/clipboardfunc.dart';
import 'package:flutterdemo/func/futurebuilderfunc.dart';
import 'package:flutterdemo/func/futurewidget.dart';
import 'package:flutterdemo/func/httprequest.dart';
import 'package:flutterdemo/func/jsonfunc.dart';
import 'package:flutterdemo/func/sharepreferencefunc.dart';
import 'package:flutterdemo/func/statuebarfunc.dart';
import 'package:flutterdemo/func/streamcontrollerbroadcastfunc.dart';
import 'package:flutterdemo/func/streamcontrollfunc.dart';
import 'package:flutterdemo/ui/ExpandFlowMenuWidget1.dart';
import 'package:flutterdemo/ui/expendmenu.dart';
import 'package:flutterdemo/widget/AnimatedCrossFadeWidget.dart';
import 'package:flutterdemo/widget/CardWidget.dart';
import 'package:flutterdemo/widget/ClipRectWidget.dart';
import 'package:flutterdemo/widget/RichTextWidget.dart';
import 'package:flutterdemo/widget/alertdialogwidget.dart';
import 'package:flutterdemo/widget/animatedcontainerwidget.dart';
import 'package:flutterdemo/widget/animateddefaulttextstylewidget.dart';
import 'package:flutterdemo/widget/animaterbuilderwidget.dart';
import 'package:flutterdemo/widget/appbarwidget.dart';
import 'package:flutterdemo/widget/backdropfilterwidget.dart';
import 'package:flutterdemo/widget/buttonbarwidget.dart';
import 'package:flutterdemo/widget/checkboxwidget.dart';
import 'package:flutterdemo/widget/chipwidget.dart';
import 'package:flutterdemo/widget/clipovalwidget.dart';
import 'package:flutterdemo/widget/clippathwidget.dart';
import 'package:flutterdemo/widget/cliprrectwidget.dart';
import 'package:flutterdemo/widget/columnwidget.dart';
import 'package:flutterdemo/widget/customscrollviewwidget.dart';
import 'package:flutterdemo/widget/datepickerwidget.dart';
import 'package:flutterdemo/widget/decoratedboxtransitionwidget.dart';
import 'package:flutterdemo/widget/decoratedboxwidget.dart';
import 'package:flutterdemo/widget/flatbutton.dart';
import 'package:flutterdemo/widget/containerwidget.dart';
import 'package:flutterdemo/widget/flowwidget.dart';
import 'package:flutterdemo/widget/fractionaltranslationwidget.dart';
import 'package:flutterdemo/widget/gesturewidget.dart';
import 'package:flutterdemo/widget/gridviewwidget.dart';
import 'package:flutterdemo/widget/iconbuttonwidget.dart';
import 'package:flutterdemo/widget/iconwidget.dart';
import 'package:flutterdemo/widget/imageswidget.dart';
import 'package:flutterdemo/widget/layoutbuilderwidget.dart';
import 'package:flutterdemo/widget/longpressdraggablewidget.dart';
import 'package:flutterdemo/widget/notificationlistenerwidget.dart';
import 'package:flutterdemo/widget/offstagewidget.dart';
import 'package:flutterdemo/widget/opacitywidget.dart';
import 'package:flutterdemo/widget/other.dart';
import 'package:flutterdemo/widget/paddingalignwidget.dart';
import 'package:flutterdemo/widget/placeholderwidget.dart';
import 'package:flutterdemo/widget/popmenubuttonwidget.dart';
import 'package:flutterdemo/widget/progress.dart';
import 'package:flutterdemo/widget/radiowidget.dart';
import 'package:flutterdemo/widget/raisebuttonwidget.dart';
import 'package:flutterdemo/widget/refreshindicatorwidget.dart';
import 'package:flutterdemo/widget/rotationbox.dart';
import 'package:flutterdemo/widget/rowwidget.dart';
import 'package:flutterdemo/widget/simpledialogwidget.dart';
import 'package:flutterdemo/widget/singlehildcrollviewwidget.dart';
import 'package:flutterdemo/widget/sizebox.dart';
import 'package:flutterdemo/widget/stackwidget.dart';
import 'package:flutterdemo/widget/streambuilderwidget.dart';
import 'package:flutterdemo/widget/switchwidget.dart';
import 'package:flutterdemo/widget/textfieldwidget.dart';
import 'package:flutterdemo/widget/tooltipwidget.dart';
import 'package:flutterdemo/widget/transformwidget.dart';
import 'package:flutterdemo/widget/wrapwidget.dart';

class Constants {
  static List<PageBean> currRoutes = [];

  static List<PageBean> uiRoutes = [
    PageBean('Other控件', OtherWidget(), 'OtherWidget', 'Offstage'),
    PageBean('FLow实现原型menu', ExpandFlowMenuWidget1(), 'ExpandFlowMenuWidget1',
        '使用Flow实现自定义效果，结果是个正选函数效果'),
    PageBean('Flow实现圆圈menu效果', ExpandMenuWidget(), 'ExpandMenuWidget',
        '使用Flow实现自定义效果,'),
  ];
  static List<PageBean> routesDart = [
    PageBean('Other控件', OtherWidget(), 'OtherWidget', 'Offstage'),
    PageBean('dart泛型', FanxingWidget(), 'FanxingWidget', '泛型'),
    PageBean('dart零碎的知识点', KnowLedgeWidget(), 'KnowLedgeWidget', 'dart零碎的知识点'),
    PageBean(
        'dart知识点，官网的概述', KnowLedgeWidget1(), 'KnowLedgeWidget1', 'dart零碎的知识点1'),
  ];

  static List<PageBean> routesFunc = [
    //flutter功能
    PageBean('Row控件', RowWidget(), 'RowWidget', 'Row'),


    PageBean('Navigator向上一个页面返回值', NavigatorFunc(), 'NavigatorFunc', 'Navigator向上一个页面返回值'),
    PageBean('状态栏显示和隐藏', StatusBarFunc(), 'StatusBarFunc', '状态栏和底部导航栏显示和隐藏'),
    PageBean('Clipboard复制数据到剪贴板', ClipboardWidget(), 'ClipboardWidget', 'Clipboard复制数据到剪贴板'),
    PageBean('SharedPreferences', SharePrefWidget(), 'SharePrefWidget',
        'SharedPreferences数据存储功能'),
    PageBean('Json转化', JsonFunc(), 'JsonFunc', 'Json对象转化'),
    PageBean('HttpClient实现网络请求', HttpFunc(), 'HttpFunc', 'HttpClient实现网络请求'),
    PageBean('StreamController广播', StreamControllerBroadCaseFunc(),
        'StreamControllerBroadCaseFunc', 'StreamController实现广播功能'),
    PageBean('StreamController', StreamControllerFunc(), 'StreamControllerFunc',
        'StreamController'),
  ];

  static List<PageBean> routes = [
    //flutter基本控件使用
    PageBean('Other控件', OtherWidget(), 'OtherWidget', 'Offstage'),
    PageBean('Progress', ProgressWidget(), 'ProgressWidget',
        'LinearProgressIndicator和其它几种进图条'),
    PageBean('Future', FutureWidget(), 'FutureWidget', 'Future'),
    PageBean('RefreshIndicator', RefreshIndicatorWidget(),
        'RefreshIndicatorWidget', 'RefreshIndicator'),
    PageBean('NotificationListener', NotificationListenerWidget(),
        'NotificationListenerWidget', 'NotificationListener'),
    PageBean('CustomScrollView', CustomScrollViewWidget(),
        'CustomScrollViewWidget', 'CustomScrollView'),
    PageBean('SingleChildScrollView', SingleChildScrollViewWidget(),
        'SingleChildScrollViewWidget', 'SingleChildScrollView'),
    PageBean('GridView', GridViewWidget(), 'GridViewWidget', 'GridView'),
    PageBean('StreamBuilder', StreamBuilderWidget(), 'StreamBuilderWidget',
        'StreamBuilder'),
    PageBean('BackdropFilter', BackDropFilterWidget(), 'BackDropFilterWidget',
        'BackdropFilter 实现模糊变换功能'),
    PageBean(
        'RotatedBox', RotatedBoxWidget(), 'RotatedBoxWidget', 'RotatedBox'),
    PageBean('FractionalTranslation控件', FractionalTranslationWidget(),
        'FractionalTranslationWidget', 'FractionalTranslation'),
    PageBean('DecoratedBox控件', DecorateBoxWidget(), 'DecorateBoxWidget',
        'DecoratedBox'),
    PageBean('Opacity控件', OpacityWidget(), 'OpacityWidget', 'Opacity'),
    PageBean('LongPressDraggable控件', LongPressDragableWidget(),
        'LongPressDragableWidget', 'LongPressDraggable'),
    PageBean('AnimatedDefaultTextStyle控件', AnimatedDefaultTextStyleWidget(),
        'AnimatedDefaultTextStyleWidget', 'AnimatedDefaultTextStyle'),
    PageBean('DecoratedBoxTransition控件', DecoratedBoxTransitionWidget(),
        'DecoratedBoxTransitionWidget', 'DecoratedBoxTransition'),
    PageBean('AnimatedBuilder控件', AnimatedBuilderWidget(),
        'AnimatedBuilderWidget', 'AnimatedBuilder'),
    PageBean('AnimatedCrossFade控件', AnimatedCrossFadeWidget(),
        'AnimatedCrossFadeWidget', 'AnimatedCrossFade'),
    PageBean('AnimatedContainer控件', AnimatedContainterWidget(),
        'AnimatedContainterWidget', 'AnimatedContainer'),
    PageBean('RichText控件', RichTextWidget(), 'RichTextWidget', 'RichText'),
    PageBean('LayoutBuilder控件', LayoutBuilderWidget(), 'LayoutBuilderWidget',
        'LayoutBuilder'),
    PageBean('Wrap控件', WrapWidget(), 'WrapWidget', 'Wrap'),
    PageBean('Flow控件', FlowWidget(), 'FlowWidget', 'Flow'),
    PageBean('Stack控件', StackWidget(), 'StackWidget', 'Stack'),
    PageBean('Transform控件', TransformWidget(), 'TransformWidget', 'Transform'),
    PageBean('Offstage控件', OffstageWidget(), 'OffstageWidget', 'Offstage'),
    PageBean('Padding、Align控件', PaddingAlignWidget(), 'PaddingAlignWidget',
        'Padding、Align'),
    PageBean('Card控件', CardWidget(), 'CardWidget', 'Card'),
    PageBean('Tooltip控件', ToolTipWidget(), 'ToolTipWidget', 'Tooltip'),
    PageBean('Chip控件', ChipWidget(), 'ChipWidget', 'Chip'),
    PageBean('AlertDialog控件', AlertDialogWidget(), 'AlertDialogWidget',
        'AlertDialog'),
    PageBean('SimpleDialog控件', SimpleDialogWidget(), 'SimpleDialogWidget',
        'SimpleDialog'),
    PageBean('Switch控件', SwitchWidget(), 'SwitchWidget', 'Switch'),
    PageBean('Radio控件', RadioWidget(), 'RadioWidget', 'Radio'),
    PageBean('CheckBox控件', CheckBoxWidget(), 'CheckBoxWidget', 'Checkbox'),
    PageBean(
        'ButtonBar控件', ButtonBarWidget(), 'ButtonBarWidget', 'ButtonBar按钮组'),
    PageBean('PopupMenuButton控件', PopMenuButtonWidget(), 'PopMenuButtonWidget',
        'PopupMenuButton'),
    PageBean('Placeholder控件', PlaceHolderWidget(), 'PlaceHolderWidget',
        'Placeholder'),
    PageBean('GestureDetector控件', GestureWidget(), 'GestureWidget',
        'GestureDetector'),
    PageBean('Appbar控件', AppbarWidget(), 'AppbarWidget', 'AppBar'),
    PageBean('Icon控件', IconWidget(), 'IconWidget', 'Icon图标控件'),
    PageBean('ClipPath控件', ClipPathWidget(), 'ClipPathWidget',
        'ClipPath路径剪裁工具 Path画五角星'),
    PageBean(
        'ClipRRect控件', ClipRRectWidget(), 'ClipRRectWidget', 'ClipRRect圆角剪裁工具'),
    PageBean('ClipOval控件', ClipOvalWidget(), 'ClipOvalWidget', 'ClipOval圆形剪裁'),
    PageBean('ClipRect控件', ClipRectWidget(), 'ClipRectWidget', 'ClipRect矩形剪裁'),
    PageBean('Image控件', ImageWidget(), 'ImageWidget', 'Image'),
    PageBean('showDatePicker控件', DatePickerWidget(), 'DatePickerWidget',
        'showDatePicker'),
    PageBean('FutureBuilder控件', FutureBuilderWidget(), 'FutureBuilderWidget',
        'FutureBuilder'),
    PageBean(
        'IconButton控件', IconButtonWidget(), 'IconButtonWidget', 'IconButton'),
    PageBean('RaiseButton控件', RaiseButtonWidget(), 'RaiseButtonWidget',
        'RaisedButton'),
    PageBean('Row控件', RowWidget(), 'RowWidget', 'Row'),
    PageBean('Column控件', ColumnWidget(), 'ColumnWidget', 'Column'),
    PageBean('Container控件', ContainerWidget(), 'ContainerWidget', 'Container'),
    PageBean(
        'TextField控件', TextFieldWidget(), 'TextFieldWidget', 'TextField输入框'),
    PageBean('SizeBox控件', SizedBoxWidget(), 'SizedBoxWidget', 'SizedBox'),
    PageBean(
        'FlatButton控件', FlatButtonWidget(), 'FlatButtonWidget', 'FlatButton'),
  ];
}
