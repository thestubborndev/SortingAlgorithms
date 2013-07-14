//
//  AppDelegate.h
//  SortingAlgorithms
//
//  Created by Carlotta Tatti on 12/07/13.
//  Copyright (c) 2013 Carlotta Tatti. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;

- (IBAction)bubbleSort:(id)sender;
- (IBAction)selectionSort:(id)sender;
- (IBAction)insertionSort:(id)sender;
- (IBAction)shellSort:(id)sender;

@end
