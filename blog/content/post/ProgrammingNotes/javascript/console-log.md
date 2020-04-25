+++
title = "Javascript Console.log"
date = 2019-02-07T09:17:39Z
tags = ["javascript","log","console"]
categories = ["javascript"]
description = "javascript console log basics"
menu = ""
banner = ""
+++

# Console log basics

For testing create a html file index.html

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
    <script src="test.js"></script>
</body>

</html>
```

File test.js

```javascript
// console.log can print any variables out eg object strings numbers boolean etc

// variable
var firstname;
firstname = "Bill";
// Print firstname contents to console
console.log(firstname);
// type of variable
console.log(typeof firstname);

var x = false;
console.log(x);
console.log(typeof x);

var num = 4;
console.log(num);
console.log(typeof num);

//Output message to console
console.log("Function x called and sould not have been called.");

//Add numbers can be changed to subtract divide or multiply
console.log(5+4);

//text plus answer remander to the sum
console.log("5 % 4 = " + 5 % 4);
```

In chrome look for the devopment tools in the menu to activeate dev panel, then select the console tab.

