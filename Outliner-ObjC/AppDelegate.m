//
//  AppDelegate.m
//  Outliner-ObjC
//
//  Created by Yohanes Bandung on 28/11/20.
//

#import "AppDelegate.h"
#import "MenuItem.h"

@interface AppDelegate ()

@property (nonatomic, strong) NSWindow *activeWindow;

@end

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)notification {
    MenuItem *menuItem = [[MenuItem alloc] init];
    [menuItem createMenu];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSSize windowSize = NSMakeSize(480, 480);
    NSRect screenSize = NSScreen.mainScreen.frame;
    NSRect rect = NSMakeRect(screenSize.size.width/2 - windowSize.width/2, screenSize.size.height/2 - windowSize.height/2, windowSize.width, windowSize.height);
    NSWindowStyleMask styleMask = NSWindowStyleMaskResizable|NSWindowStyleMaskClosable|NSWindowStyleMaskTitled|NSWindowStyleMaskMiniaturizable;
    NSBackingStoreType backing = NSBackingStoreBuffered;

    
    NSWindow *activeWindow = [[NSWindow alloc] initWithContentRect:rect
                             styleMask:styleMask
                               backing:backing
                                 defer:NO];

    NSRect frame = NSMakeRect(5, 5, 200, 100);
    NSTextField *textField = [[NSTextField alloc] initWithFrame:frame];
    [textField setPlaceholderString:@"Write here..."];
    textField.lineBreakMode = NSLineBreakByWordWrapping;
    textField.bezeled = YES;
    textField.bezelStyle = NSBezelBorder;

    [[[activeWindow contentView] superview] addSubview:textField];
    
    activeWindow.title = @"Outliner-ObjC";
    [activeWindow makeKeyAndOrderFront:NSApp];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
