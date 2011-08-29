//
//  CalculatorController.h
//  Simple Calculator
//
//  Created by Fauzan Qadri on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorController : NSObject{
    float result;
    IBOutlet NSTextField *CalculatorScreen;
    NSWindow *window;
    int currentOperation;
    float currentNumber;
}
-(IBAction)NumberButtonPressed:(id)sender;
-(IBAction)OperatorButtonPressed:(id)sender;
-(IBAction)ClearButttonAcction:(id)sender;
-(IBAction)CancelButtonAction:(id)sender;
@property (strong) IBOutlet NSWindow *window;
@end
