//
//  ViewController.m
//  Attributor
//
//  Created by Igor on 3/16/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *body;

@end

@implementation ViewController

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
    
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection {
    
    [self.body.textStorage addAttributes:@{NSStrokeWidthAttributeName : @-3,
                                           NSStrokeColorAttributeName : [UIColor blackColor]}
                                   range:self.body.selectedRange];
}

- (IBAction)unoutlineBodySelection {
    
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
                                     range:self.body.selectedRange];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

@end
