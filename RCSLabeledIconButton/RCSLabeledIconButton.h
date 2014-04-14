// RCSLabeledIconButton.h
//
// Copyright (c) 2014 Robin Kunde (http://recoursive.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, RCSLabeledIconButtonLayoutMode) {
    RCSLabeledIconButtonLayoutModeDefault,
    RCSLabeledIconButtonLayoutModeReversed,
    RCSLabeledIconButtonLayoutModeIconTop,
    RCSLabeledIconButtonLayoutModeIconBottom,
};

@interface RCSLabeledIconButton : UIButton
@property (nonatomic) NSUInteger labeledIconButtonLayoutMode;
@property (nonatomic) CGFloat    labeledIconButtonBufferMagnitude;
@end

///----------------
/// @name Constants
///----------------

/**
 ## Labeled Icon Button Mode

 The following constants are provided by `RCSLabeledIconButton` to customize the layout.

 enum {
   RCSLabeledIconButtonLayoutModeDefault,
   RCSLabeledIconButtonLayoutModeReversed,
   RCSLabeledIconButtonLayoutModeIconTop,
   RCSLabeledIconButtonLayoutModeIconBottom,
 }

 `RCSLabeledIconButtonLayoutModeDefault`
 The icon is on the left of the Label, same as UIButton, but this class allows you to customize the distance
 between the two more easily.

 `RCSLabeledIconButtonLayoutModeReversed`
 Opposite of default.

 `RCSLabeledIconButtonLayoutModeIconTop`
 The icon is above the label. Both are centered horizontally individually and vertically together.

 `RCSLabeledIconButtonLayoutModeIconBottom`
 The icon is below the label. Both are centered horizontally individually and vertically together.

 */
