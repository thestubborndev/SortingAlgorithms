//
//  AppDelegate.m
//  SortingAlgorithms
//
//  Created by Carlotta Tatti on 12/07/13.
//  Copyright (c) 2013 Carlotta Tatti. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate {
    NSMutableArray *arrayOfNumbers;
    NSMutableArray *arrayOfNumbersOriginal;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
//    arrayOfNumbersOriginal = @[@3,@6,@1,@4,@7,@9,@2,@5,@8].mutableCopy;
    arrayOfNumbers = arrayOfNumbersOriginal;
}

- (void)fillArrayOfNumbers {
    arrayOfNumbersOriginal = [NSMutableArray new];
    NSArray *array = [self.textField.stringValue componentsSeparatedByString:@","];
    for (NSString *string in array) {
        [arrayOfNumbersOriginal addObject:[NSNumber numberWithInt:string.intValue]];
    }
}

#pragma mark - Bubble Sort

- (IBAction)bubbleSort:(id)sender {
    [self fillArrayOfNumbers];
    arrayOfNumbers = arrayOfNumbersOriginal;
    int i = 1;
    do {
        i++;
    } while ([self bubbleSortWithArray:arrayOfNumbers]);
    
    NSLog(@"Total numbers of steps: %i", i);
    NSLog(@"%@", arrayOfNumbers);
}

- (BOOL)bubbleSortWithArray:(NSMutableArray *)array {
    BOOL swapHappened = FALSE;
    for (int i = 0; i < array.count; i++) {
        int indexFirst = i;
        int indexSecond = i+1;
        if (indexSecond < array.count) {
            NSNumber *first = array[indexFirst];
            NSNumber *second = array[indexSecond];
            if ([first isGreaterThan:second]) {
                array[indexFirst] = second;
                array[indexSecond] = first;
                swapHappened = TRUE;
            }
        }
    }
    
    return swapHappened;
}

#pragma mark - Selection Sort

- (IBAction)selectionSort:(id)sender {
    [self fillArrayOfNumbers];
    arrayOfNumbers = arrayOfNumbersOriginal;
    NSArray *result = [self selectionSortWithArray:arrayOfNumbers];
    NSLog(@"%@", result);
}

- (NSArray *)selectionSortWithArray:(NSMutableArray *)array {
    NSMutableArray *orderedArray = [NSMutableArray new];
    NSUInteger arrayCount = array.count;
    int x = 0;
    do {
        NSNumber *smallestNumber = [self findSmallestNumberInArray:array];
        [array removeObject:smallestNumber];
        [orderedArray addObject:smallestNumber];
        x++;
    } while (x < arrayCount);
    
    return orderedArray;
}

#pragma mark - Insertion Sort

- (IBAction)insertionSort:(id)sender {
    arrayOfNumbers = arrayOfNumbersOriginal;
    NSArray *result = [self insertionSortWithArray:arrayOfNumbers];
    NSLog(@"%@", result);
}

- (NSArray *)insertionSortWithArray:(NSMutableArray *)array {
    NSMutableArray *orderedArray = [NSMutableArray new];

    return orderedArray;
}

#pragma mark - Shell Sort

- (IBAction)shellSort:(id)sender {
    arrayOfNumbers = arrayOfNumbersOriginal;
}

#pragma mark - Misc methods

- (NSNumber *)findSmallestNumberInArray:(NSArray *)array {
    NSNumber *smallest = @15;
    for (int i = 0; i < array.count; i++) {
        NSNumber *item = array[i];
        if ([item isLessThan:smallest]) {
            smallest = item;
        }
    }
    return smallest;
}

@end
