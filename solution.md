1. Create your application and set it up.

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold()
  }
}
```

2. Pass a `SafeArea` widget to the `Scaffold` widget.

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        SafeArea()
    )
  }
}
```

3. Let's digest the screenshot, we have a `Column` with 3 things: the `Text` `Grade Calculator`, a `Container` with marks in it, and a `Container` that looks like a button, sketch out your widget tree to match this.

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        child: Column(
            children: [
                Text(),
                Container(),
                Container(),
            ]
        )
    )
  }
}

```

4. Start by creating the first element in the `Column` which is a `Text` widget.

```dart
    return Scaffold(
        child: Column(
            children: [
                Text("Grade Calculator"),
                Container(),
                Container(),
            ]
        )
    )
```

5. Increase it's size and give it a color.

```dart
Text(
              "Grade Calculator",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
```

The color provided in the screenshot is `#7c7ded` in hex code.
But how to use hex colors in flutter?

We will use the `Color` widget and we add `0xff` in front of the hex color:

```dart
    color: Color(0xff7c7ded),
```

6. Create a `Container` that represents the button and pass it a `Text` widget as a child.

```dart
    Container(child: Text("Calculate"),)
```

7. Style the `Text` widget and give your `Container` a background color, border radius and some padding.

```dart
            Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff7c7ded),
            ),
              child: Text(
                "Calculate",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
```

8. To our middle `Container` give it a `height` of `300`, a border, border radius and some padding and margin.

```dart
    decoration: BoxDecoration(
        border: Border.all(
        width: 2,
        color: Color(0xff7c7ded),
            ),
        borderRadius: BorderRadius.circular(40),
        ),
        height: 300,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.symmetric(horizontal: 15),
```

9. Inside this container we have a `Column` and inside it we have a couple of `Row`s, and in each `Row` we have 2 `Text` widgets one for the class and one for the mark. Sketch that with code.

```dart
    child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Math:",
                      ),
                      Text(
                        "A",
                      )
                    ],
                  ),
                ])
```

10. Style your first `Text` widget.

```dart
Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Math:",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
                      ),
                      Text(
                        "A",
                      )
                    ],
                  ),
```

11. Create a variable and store the style you just created in it and apply it to each other `Text` widget.

```dart
        [...]
  Widget build(BuildContext context) {
    final TextStyle gradeTextStyle =
        TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    return Scaffold(
        [...]
```

```dart
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
                "Math:",
                style: gradeTextStyle,
                ),
            Text(
                "A",
                style: gradeTextStyle,
                )
                ],
        ),
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
                "Physics:",
                style: gradeTextStyle,
                ),
            Text(
                "B",
                style: gradeTextStyle,
                )
                ],
        ),
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
                "Chemistry:",
                style: gradeTextStyle,
                ),
            Text(
                "C",
                style: gradeTextStyle,
                )
                ],
        )
```

12. Change your **MAIN** `Column` `mainAxisAlignment` and `crossAxisAlignment`.

```dart
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [...]
```

### 🍋 One more variable!

Replace the color `#7c7ded` that we used multiple times with a variable that stores that color.

```dart
  Widget build(BuildContext context) {
    final TextStyle gradeTextStyle =
        TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    final Color purple = Color(0xff7c7ded);
```

```dart
    Text(
        "Grade Calculator",
        style: TextStyle(
        color: purple, fontSize: 30, fontWeight: FontWeight.bold),
        ),
```
