//
//  AppDelegate.m
//  Outliner
//
//  Created by Yohanes Bandung on 28/11/20.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (nonatomic, strong) NSWindow *activeWindow;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    // A little help from this site: https://medium.com/@MalikAlayli/create-a-macos-app-without-a-main-storyboard-81f4ee8be1d
    // Eventhough that uses Swift
    
    NSSize windowSize = NSMakeSize(480, 480);
    NSRect screenSize = NSScreen.mainScreen.frame;
    NSRect rect = NSMakeRect(screenSize.size.width/2 - windowSize.width/2, screenSize.size.height/2 - windowSize.height/2, windowSize.width, windowSize.height);
    NSWindowStyleMask styleMask = NSWindowStyleMaskResizable|NSWindowStyleMaskClosable|NSWindowStyleMaskTitled|NSWindowStyleMaskMiniaturizable;
    NSBackingStoreType backing = NSBackingStoreBuffered;

    
    NSWindow *activeWindow = [[NSWindow alloc] initWithContentRect:rect
                             styleMask:styleMask
                               backing:backing
                                 defer:NO];
    
    activeWindow.title = @"Outliner";
    [activeWindow makeKeyAndOrderFront:NSApp];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
