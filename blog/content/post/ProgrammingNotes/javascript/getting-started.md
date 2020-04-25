+++
title = "Getting Started in Javascript"
date = 2019-02-07T09:17:39Z
tags = ["javascript"]
categories = ["javascript"]
description = "Getting started in javascript"
menu = ""
banner = ""
+++

# Getting started with javascript in chrome

Inline javascript is faster than loading external files but external files are easier to update if in larger projects or the same code is used in many html files.

## Basic inline javascript in a html file

```html
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Getting started with Javascript</title>
</head>

<body>
    <h1 id="header">Intro to Javascript</h1>
    <!-- Javascript goes in the script tags -->
    <script>
        var header = document.getElementById('header');
        setTimeout(function () {
            header.innerHTML = "Text changed";

        }, 3000)

    </script>
</body>

</html>
```

## Basic external javascript in a html file

Folder structure

Save html file as index.html then create a folder called js.
Then save the javascript file as header.js in the js folder.

Example

File index.html

```html
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Getting started with Javascript</title>
</head>

<body>
    <h1 id="header">Intro to Javascript</h1>
    <!-- Javascript file location in relative to this html file location -->
    <script src="js/header.js"></script>
</body>

</html>

```

Save file in folder js

File header.js

```javascript
        // Javascript
        // This code will change the header text after 3 seconds
        var header = document.getElementById('header');
        setTimeout(function () {
            header.innerHTML = "Text changed";

        }, 3000)
```

Open file index.html in chome and the text should change after 3 seconds.
