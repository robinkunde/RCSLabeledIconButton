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

* `labeledIconButtonLayoutMode`:      Layout mode.

 - `RCSLabeledIconButtonLayoutModeDefault`
 The icon is on the left of the Label, same as UIButton, but this class allows you to customize the distance
 between the two more easily.

 - `RCSLabeledIconButtonLayoutModeReversed`
 Opposite of default.

 - `RCSLabeledIconButtonLayoutModeIconTop`
 The icon is above the label. Both are centered horizontally individually and vertically together.

 - `RCSLabeledIconButtonLayoutModeIconBottom`
 The icon is below the label. Both are centered horizontally individually and vertically together.

- `labeledIconButtonBufferMagnitude`: Distance in points between the image and label.

For more information on how to use RCSLabeledIconButton, please see `Example.xcodeproj`.

## Examples

<p align="center" >
  <img src="https://raw.github.com/sapheriel/RCSLabeledIconButton/master/assets/layoutModes.png" alt="RCSLabeledIconButton" title="RCSLabeledIconButton">
</p>
