// RCSLabeledIconButton.m
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

#import "RCSLabeledIconButton.h"

@implementation RCSLabeledIconButton

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];

    [self setup];
}

- (void)setup
{
    self.labeledIconButtonLayoutMode      = RCSLabeledIconButtonLayoutModeDefault;
    self.labeledIconButtonBufferMagnitude = 6.0f;
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;

    CGFloat imagePadding = ceilf(self.labeledIconButtonBufferMagnitude / 2);
    CGFloat titlePadding = floorf(self.labeledIconButtonBufferMagnitude / 2);

    switch (_labeledIconButtonLayoutMode) {
        case RCSLabeledIconButtonLayoutModeDefault:
            self.imageEdgeInsets = UIEdgeInsetsMake(0.0f,
                                                    -imagePadding,
                                                    0.0f,
                                                    imagePadding
                                                    );

            self.titleEdgeInsets = UIEdgeInsetsMake(0.0f,
                                                    titlePadding,
                                                    0.0f,
                                                    -titlePadding
                                                    );
            break;

        case RCSLabeledIconButtonLayoutModeReversed:
            self.imageEdgeInsets = UIEdgeInsetsMake(0.0f,
                                                    (titleSize.width + imagePadding),
                                                    0.0f,
                                                    -(titleSize.width + imagePadding));

            self.titleEdgeInsets = UIEdgeInsetsMake(0.0f,
                                                    -(imageSize.width + titlePadding),
                                                    0.0f,
                                                    (imageSize.width + titlePadding));
            break;

        case RCSLabeledIconButtonLayoutModeIconTop:
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + self.labeledIconButtonBufferMagnitude),
                                                    0.0f,
                                                    0.0f,
                                                    - titleSize.width);

            self.titleEdgeInsets = UIEdgeInsetsMake((imageSize.height + self.labeledIconButtonBufferMagnitude),
                                                    -imageSize.width,
                                                    0.0f,
                                                    0.0f);
            break;

        case RCSLabeledIconButtonLayoutModeIconBottom:
            self.imageEdgeInsets = UIEdgeInsetsMake((titleSize.height + self.labeledIconButtonBufferMagnitude),
                                                    0.0f,
                                                    0.0f,
                                                    -titleSize.width);

            self.titleEdgeInsets = UIEdgeInsetsMake(-(imageSize.height + self.labeledIconButtonBufferMagnitude),
                                                    -imageSize.width,
                                                    0.0f,
                                                    0.0f);
            break;

        default:
            break;
    }
}

@end
