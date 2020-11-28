//
//  main.m
//  Outliner
//
//  Created by Yohanes Bandung on 28/11/20.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // Setup code that might create autoreleased objects goes here.
//    }
//    return NSApplicationMain(argc, argv);
//
//    removing above code and use the below code because of the answer from this
//    StackOverflow: https://stackoverflow.com/questions/15694510/programmatically-create-initial-window-of-cocoa-app-os-x
    
    
    
    NSArray *tl;
    NSApplication *application = [NSApplication sharedApplication];
    [[NSBundle mainBundle] loadNibNamed:@"MainMenu" owner:application topLevelObjects:&tl];

    AppDelegate *applicationDelegate = [[AppDelegate alloc] init];      // Instantiate App  delegate
    [application setDelegate:applicationDelegate];                      // Assign delegate to the NSApplication
    [application run];                                                  // Call the Apps Run method

    return 0;       // App Never gets here.
}
