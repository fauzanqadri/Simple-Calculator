//
//  CalculatorController.m
//  Simple Calculator
//
//  Created by Fauzan Qadri on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorController.h"

@implementation CalculatorController
@synthesize window = _window;
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}
-(IBAction)NumberButtonPressed:(id)sender{
    currentNumber = currentNumber * 10 + (float) [sender tag];
    CalculatorScreen.stringValue = [NSString stringWithFormat:@"%2f",currentNumber];
}
-(IBAction)OperatorButtonPressed:(id)sender{
    currentOperation = [sender tag];
    if(currentOperation == 0){
        result = currentNumber;
    }else{
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result / currentNumber;
                break;
            case 4:
                result = result * currentNumber;
                break;
            default:
                currentOperation = 0;
                break;
        }
    }
    CalculatorScreen.stringValue = [NSString stringWithFormat:@"%2f",result];
    currentNumber = 0;
    if ([sender tag] == 0) {
        result = 0;
    }
}
-(IBAction)ClearButttonAcction:(id)sender{
    currentNumber = 0;
    CalculatorScreen.stringValue = @"0";
}
-(IBAction)CancelButtonAction:(id)sender{
    currentNumber = 0;
    currentOperation = 0;
    CalculatorScreen.stringValue = @"0";
}

@end
