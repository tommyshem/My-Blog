title = "Go barcode"
date = "2018-06-26T2:00:00"
tags = ["go,barcode"]
categories = ["go"]
banner = ""
+++

## Go Barcode

website to `go` barcode package

https://github.com/boombuler/barcode

## Go install packages

```bash
go get github.com/boombuler/barcode
go get github.com/boombuler/barcode/qr
```

Basic program

```go
package main

import (
    "image/png"
    "os"

    "github.com/boombuler/barcode"
    "github.com/boombuler/barcode/qr"
)

func main() {
    // Create the barcode
    qrCode, _ := qr.Encode("Hello World", qr.M, qr.Auto)

    // Scale the barcode to 200x200 pixels
    qrCode, _ = barcode.Scale(qrCode, 200, 200)

    // create the output file
    file, _ := os.Create("qrcode.png")
    defer file.Close()

    // encode the barcode as png
    png.Encode(file, qrCode)
}
```
