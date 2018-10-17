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
[![Alamofire](https://img.shields.io/cocoapods/v/Alamofire.svg?label=Alamofire&colorB=c64c2c)](https://github.com/Alamofire/Alamofire/)
[![AlamofireImage](https://img.shields.io/cocoapods/v/AlamofireImage.svg?label=AlamofireImage&colorB=c64c2c)](https://github.com/Alamofire/AlamofireImage)

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
let wobookReader = WobookReader(withURL: "https://httpbin.org/get", withAPIKey: "XXX-XXX-XXX")
```

If you are connected and own the issue, you can add your readerKey:

```swift
let wobookReader = WobookReader(withURL: "https://httpbin.org/get", withAPIKey: "XXX-XXX-XXX", withReaderKey: "XXXXXXXX")
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


### Customization

  > The following parameters have a default value in the framework and therefore are optionals.

Change the track color of the progress bar and matching border color of the selected thumbnail:

```swift
withGradientColors: [CGColor]?
withDefaultColor: UIColor?
```

  > The default color will only be used if the gradientColors parameter is nil, an empty array or contains less than 2 colors.


Use your own Placeholder for the thumbnails:

```swift
withPlaceholderImage: UIImage?
```

Change the default error message:

```swift
withErrorMessage: String?
```

#### Example

```swift
let wobookReader = WobookReader(withURL: "https://httpbin.org/get",
                                withAPIKey: "XXX-XXX-XXX",
                                withGradientColors: [UIColor.darkBlue.cgColor, UIColor.lightBlue.cgColor],
                                withPlaceholderImage: UIImage(named: "Placeholder"),
                                withErrorMessage: "An error has occured.")
wobookReader.present(from: self)
```
