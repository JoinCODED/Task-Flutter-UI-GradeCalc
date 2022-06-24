# Grade Calculator 〽️

![result](https://user-images.githubusercontent.com/84308096/154513932-e7f4a10a-f76b-43ed-b54f-c1ebbfe02e4f.png)

Design an application similar to the above application.

💡 hint:
[Border](https://api.flutter.dev/flutter/painting/Border-class.html)

## 🍋 Instructions

```
1. Create a new Github repo
2. Create a local repo using the command `git init`
3. Push to the new repo

git remote add origin https://github.com/YourUsername/repoName.git
git branch -M main
git push -u origin main
```

1. Create your application and set it up.
2. Pass a `SafeArea` widget to the `Scaffold` widget.
3. Let's digest the screenshot, we have a `Column` with 3 things: the `Text` `Grade Calculator`, a `Container` with marks in it, and a `Container` that looks like a button, sketch out your widget tree to match this.
4. Start by creating the first element in the `Column` which is a `Text` widget.
5. Increase it's size and give it a color.

💡 hint:
The color provided in the screenshot is `#7c7ded` in hex code.
But how to use hex colors in flutter? Google it!

6. Create a `Container` for the middle element, leave it empty for now.
7. Create a `Container` that represents the button and pass it a `Text` widget as a child.
8. Style the `Text` widget and give your `Container` a background color,a border radius and some padding and margin.
9. To our middle `Container` give it a `height` of `300`, a border, border radius and some padding.
10. Inside this container we have a `Column` and inside it we have a couple of `Row`s, and in each `Row` we have 2 `Text` widgets one for the class and one for the mark. Sketch that with code.
11. Style your first `Text` widget.
12. Create a variable and store the style you just created in it and apply it to each other `Text` widget.
13. Change your **MAIN** `Column` `mainAxisAlignment` and `crossAxisAlignment`.

### 🤼‍♂️ One more variable!

Replace the color `#7c7ded` that we used multiple times with a variable that stores that color.
