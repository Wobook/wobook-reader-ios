<h1 align="center"> WobookReader for iOS </h1> <br>
<p align="center">
    <img alt="WobookReader for iOS" title="WobookReader for iOS" src="/assets/logo.png" height="350">
</p>

<p align="center">
    An incredible reading experience
</p> <br/>

  > Public releases of the iOS framework for CocoaPods

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Customize](#customize)

## Requirements

[![Swift 5.0+](https://img.shields.io/badge/Swift-5.0%2B-orange.svg?style=for-the-badge&logo=swift&color=fa7343&logoColor=fa7343)](https://swift.org)
[![Xcode 10.0+](https://img.shields.io/badge/Xcode-10.0%2B-blue.svg?style=for-the-badge&logo=xcode&color=1472e1&logoColor=ffffff)](https://developer.apple.com/xcode/)
[![iOS 11.0+](https://img.shields.io/badge/iOS-11.0%2B-blue.svg?style=for-the-badge&logo=apple&color=178ae7&logoColor=ffffff)](https://developer.apple.com/ios/)

## Installation

![CocoaPods version](https://img.shields.io/cocoapods/v/WobookReader.svg?style=for-the-badge&logo=xcode&color=1472e1&logoColor=ffffff)
![CocoaPods platforms](https://img.shields.io/cocoapods/p/WobookReader.svg?style=for-the-badge&logo=apple&color=178ae7&logoColor=ffffff)
![Latest release date](https://img.shields.io/github/release-date/Wobook/wobook-reader-ios.svg?style=for-the-badge)
![Total downloads](https://img.shields.io/github/downloads/Wobook/wobook-reader-ios/total.svg?style=for-the-badge&logo=google-analytics&logoColor=ffffff)

### CocoaPods

To install WobookReader using [CocoaPods](http://cocoapods.org), add the following line to your Podfile:

```ruby
pod 'WobookReader'
```

#### ATS

App Transport Security (ATS) is a technology that requires an app to either support best practice HTTPS security or statically declare its security limitations via a property in its `Info.plist`. ATS is officially documented in the *NSAppTransportSecurity* section of the [Information Property List Key Reference](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW33).

You must add **wobook.com** as an exception to allow the HTTP calls of the reader.

```xml
  <key>NSAppTransportSecurity</key>
  <dict>
    <key>NSAllowsArbitraryLoads</key>
    <false/>
    <key>NSExceptionDomains</key>
    <dict>
      <key>wobook.com</key>
      <dict>
        <key>NSExceptionAllowsInsecureHTTPLoads</key>
        <true/>
        <key>NSExceptionMinimumTLSVersion</key>
        <string>TLSv1.2</string>
        <key>NSExceptionRequiresForwardSecrecy</key>
        <true/>
        <key>NSIncludesSubdomains</key>
        <true/>
        <key>NSRequiresCertificateTransparency</key>
        <false/>
        <key>NSThirdPartyExceptionAllowsInsecureHTTPLoads</key>
        <false/>
        <key>NSThirdPartyExceptionMinimumTLSVersion</key>
        <string>TLSv1.2</string>
        <key>NSThirdPartyExceptionRequiresForwardSecrecy</key>
        <true/>
      </dict>
    </dict>
  </dict>
```

## Usage

```swift
import WobookReader
```

### Initialializing the reader

```swift
let reader = WKReader(withURL: "https://httpbin.org/get",
                                withAPIKey: "XXX-XXX-XXX")
```

If you are connected and own the issue, you can add your readerKey:

```swift
let reader = WKReader(withURL: "https://httpbin.org/get",
                                withAPIKey: "XXX-XXX-XXX",
                                withReaderKey: "XXXXXXXX")
```

WKReader can also open an issue from a local path:

```swift
let reader = WKReader(withPath: "Folder/Issue/")
```

  > The parameters `apiKey` and `readerKey` are irrelevant when offline.

### Presenting the reader

Present the reader from the `UIViewController` of your choice:

```swift
reader.present(from: self)
```

  > The WKReader will always present itself from the main thread.

### Dismissal completion block

Block which is called when the modal controller has been dismissed:

```swift
var onDismiss: (() -> Void)?
```

*Example:*
```swift
reader.onDismiss = {
  print("The reader has been dismissed")
}
```

## Customize

Main color for progress indicator if no `progressColors` are specified:

```swift
var mainColor: UIColor?
```

*Example:*
```swift
reader.mainColor = UIColor.blue
```

Colors used to create a gradient for progress indicator:

```swift
var progressColors: [CGColor]?
```

*Example:*
```swift
reader.progressColors = [UIColor.red.cgColor,
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
reader.placeholder = UIImage(named: "Placeholder")
```

### Example

```swift
let reader = WKReader(withURL: "https://httpbin.org/get",
                                withAPIKey: "XXX-XXX-XXX",
                                withReaderKey: "XXXXXXXX")

reader.mainColor = UIColor.blue
reader.progressColors = [UIColor.red.cgColor,
                         UIColor.orange.cgColor,
                         UIColor.yellow.cgColor]
reader.placeholder = UIImage(named: "Placeholder")
reader.onDismiss = {
    print("The reader has been dismissed")
}

reader.present(from: self)
```
