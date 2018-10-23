<h1 align="center"> Wobook Reader for iOS </h1> <br>
<p align="center">
    <img alt="Wobook Reader for iOS" title="Wobook Reader for iOS" src="/assets/logo.png" height="250">
</p>

<p align="center">
    An incredible reading experience
</p>

> Public releases of the iOS framework for CocoaPods

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)

## Requirements

[![Swift 4.2+](https://img.shields.io/badge/Swift-4.2%2B-orange.svg)](https://swift.org)
[![Xcode 9.3+](https://img.shields.io/badge/Xcode-9.3%2B-lightgrey.svg)](https://developer.apple.com/xcode/)
[![iOS 11.0+](https://img.shields.io/badge/iOS-11.0%2B-blue.svg)](https://developer.apple.com/ios/)

## Installation

![CocoaPods version](https://img.shields.io/cocoapods/v/WobookReader.svg)
![CocoaPods downloads](https://img.shields.io/cocoapods/dt/WobookReader.svg)

### CocoaPods

To install WobookReader using [CocoaPods](http://cocoapods.org), add the following line to your Podfile:

```ruby
pod 'WobookReader'
```

## Usage

```swift
import WobookReader
```

### Initialializing the reader

```swift
let wobookReader = WobookReader(withURL: "https://httpbin.org/get",
                                withAPIKey: "XXX-XXX-XXX")
```

If you are connected and own the issue, you can add your readerKey:

```swift
let wobookReader = WobookReader(withURL: "https://httpbin.org/get",
                                withAPIKey: "XXX-XXX-XXX",
                                withReaderKey: "XXXXXXXX")
```

WobookReader can also open an issue from a local path:

```swift
let wobookReader = WobookReader(withPath: "Folder/Issue/")
```

  > The parameters `apiKey` and `readerKey` are irrelevant when offline.

### Presenting the reader

Present the reader from the `UIViewController` of your choice:

```swift
wobookReader.present(from: self)
```

> Wobook Reader will always present itself from the main thread.

### Customization

Main color for progress indicator if no `progressColors` are specified:

```swift
var mainColor: UIColor?
```

*Example:*
```swift
wobookReader.mainColor = UIColor.blue
```

Colors used to create a gradient for progress indicator:

```swift
var progressColors: [CGColor]?
```

*Example:*
```swift
wobookReader.progressColors = [UIColor.red.cgColor,
                               UIColor.orange.cgColor,
                               UIColor.yellow.cgColor]
```

  > The main color will be used if this parameter is nil, an empty array or contains less than 2 colors.


Placeholder used while loading thumbnails:

```swift
var placeholder: UIImage?
```

*Example:*
```swift
wobookReader.placeholder = UIImage(named: "Placeholder")
```

### Example

```swift
let wobookReader = WobookReader(withURL: "https://httpbin.org/get",
                                withAPIKey: "XXX-XXX-XXX",
                                withReaderKey: "XXXXXXXX")

wobookReader.mainColor = UIColor.blue
wobookReader.progressColors = [UIColor.red.cgColor,
                               UIColor.orange.cgColor,
                               UIColor.yellow.cgColor]
wobookReader.placeholder = UIImage(named: "Placeholder")

wobookReader.present(from: self)
```
