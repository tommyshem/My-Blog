+++
title = "Rust Strings"
date = 2019-01-27T09:24:55Z
tags = ["rust"]
categories = ["rust"]
description = "Rust String Notes"
banner = ""
+++

# Rust String Notes


## Rust String Examples

A String can be passed back from inside a function because it passes the ownership on.

```rust
fn test() -> String
{
let mystring = String::from("test string") // create string
mystring	
}
```
&Str a string slice can not be passed back from inside a function if the string it points to was created inside the function

```rust
fn test() -> &str
{
let mystring = String::from("test string") // create string 
&mystring      // Not allowed as it can not pass ownership from string created inside function. 
               // because mystring will be freed when the function goes out of scope.
}
```



### Reverse a string

```rust
pub fn reverse(input: &str) -> String {
    let mut result = String::new();  // new string created

    for letter in input.chars().rev() {  // Use the rev function in a loop to get every char
        result.push(letter);
    }
    return result;  // pass ownership of the string
}
```
### pattern matching

```rust
pub fn reply(message: &str) -> &str {
    // Check for yelling
    let is_yelling = message.contains(char::is_alphabetic) && message == message.to_uppercase();
    // Pattern match mesage
    match message.trim() {
        // Empty message
        m if m.is_empty() => "Fine. Be that way!",
        // Question and yelling
        m if m.ends_with("?") && is_yelling => "Calm down, I know what I'm doing!",
        // Question
        m if m.ends_with("?") => "Sure.",
        // Just yelling
        m if is_yelling => "Whoa, chill out!",
        // Anything else
        _ => "Whatever."
    }
}
```
