# Widget Switcher

[![license](https://img.shields.io/github/license/Ashir14/widget_switcher)](https://github.com/Ashir14/widget_switcher/blob/master/LICENSE)

An animated widget that lets you switch between widgets.

(This package is still in development)

![Widget Switcher](example.gif)

## Features

- Provide widgets of your choosing to switch between
- Adjust the animation according to your choice
- Use nested widgets for more options

## Getting started

In your flutter project add the dependency:

```yaml
dependencies:
  widget_switcher: any
```

Import the package:

```dart
import 'package:widget_switcher/widget_switcher.dart';
```

## Usage

```dart
Scaffold(
  body: Center(
    child: WidgetSwitcher(
      firstWidget: textField(),
      secondWidget: button(),
      switchToSecondWidget: isUnlocked,
      animationDuration: 500,
    ),
  ),
)
```
Check the example project for a full example
