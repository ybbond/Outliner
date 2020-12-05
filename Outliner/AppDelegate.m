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

- (void)applicationWillFinishLaunching:(NSNotification *)notification {
    [self createMenu];
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
    
    activeWindow.title = @"Outliner";
    [activeWindow makeKeyAndOrderFront:NSApp];
}

-(void)createMenu {
    NSMenu *menubar = [[NSMenu alloc] init];
    NSMenuItem *firstMenu = [[NSMenuItem alloc] init];
    [menubar addItem:firstMenu];
    [NSApp setMainMenu:menubar];
    NSMenu *firstSubmenu = [[NSMenu alloc] init];

    NSMenuItem *aboutMenuItem = [[NSMenuItem alloc] initWithTitle:@"About Outliner"
                                                           action:NULL
                                                    keyEquivalent:@""];
    NSMenuItem *quitMenuItem = [[NSMenuItem alloc] initWithTitle:@"Quit Outliner"
                                                          action:@selector(terminate:)
                                                   keyEquivalent:@"q"];

    [firstSubmenu addItem:aboutMenuItem];
    [firstSubmenu addItem:quitMenuItem];

    [firstMenu setSubmenu:firstSubmenu];
 }

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
