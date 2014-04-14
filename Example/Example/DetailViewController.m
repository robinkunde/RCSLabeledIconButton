// DetailViewController.m
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

#import "DetailViewController.h"

#import "RCSLabeledIconButton.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet RCSLabeledIconButton *button1;
@property (weak, nonatomic) IBOutlet RCSLabeledIconButton *button2;
@property (weak, nonatomic) IBOutlet RCSLabeledIconButton *button3;
@property (weak, nonatomic) IBOutlet RCSLabeledIconButton *button4;
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)configureView
{
    // Update the user interface for the detail item.

    self.button1.labeledIconButtonLayoutMode = RCSLabeledIconButtonLayoutModeDefault;
    self.button2.labeledIconButtonLayoutMode = RCSLabeledIconButtonLayoutModeReversed;
    self.button3.labeledIconButtonLayoutMode = RCSLabeledIconButtonLayoutModeIconTop;
    self.button4.labeledIconButtonLayoutMode = RCSLabeledIconButtonLayoutModeIconBottom;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
