+++
title = "Visual Code Testing Notes"
date = "2019-07-13T20:30:00+02:00"
tags = ["extension testing"]
categories = ["visual-code"]
banner = "images/blog/tm-scope.png"
+++

# Visual Code Testing

## Get code scope

VS Code comes with a built-in tool to easily obtain the scope of a piece of syntax.

Press ctrl + shift + P, for the command pallette to show up, then type dev, and choose 'Developer: Inspect TM Scopes' option.

This will show you the selected token's scope. There are four sections:

## Custom theme highlighting keywords in the settings file

"editor.tokenColorCustomizations": {
        "[One Dark Pro]": {
            "textMateRules": [
                {
                    "scope": [
                        "keyword.operator"
                    ],
                    "settings": {
                        "foreground": "#c678dd"
                    }
                }
            ]
        }
    }