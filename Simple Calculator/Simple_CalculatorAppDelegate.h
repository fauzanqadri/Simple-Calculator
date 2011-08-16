//
//  Simple_CalculatorAppDelegate.h
//  Simple Calculator
//
//  Created by Fauzan Qadri on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Simple_CalculatorAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *_window;
}

@property (strong) IBOutlet NSWindow *window;

@end
