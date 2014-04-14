## RCSLabeledIconButton

RCSLabeledIconButton makes it easy to customize the position of the image and text label of a UIButton. It comes with several built-in layout modes and is easy to subclass to add more.

## Installation

Just copy the files in `RCSLabeledIconButton/` into your Xcode project, or use the Cocoapod.

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like RCSLabeledIconButton in your projects.

#### Podfile

```ruby
platform :ios, '7.0'
pod "RCSLabeledIconButton", "~> 1.0"
```

## Usage

Instances of RCSLabeledIconButton can be configured with two properties:

- `labeledIconButtonLayoutMode`:      Layout mode. Details are documented in the RCSLabeledIconButton.h. 
- `labeledIconButtonBufferMagnitude`: Distance in points between the image and label.

For more information on how to use RCSLabeledIconButton, please see `Example.xcodeproj`.
