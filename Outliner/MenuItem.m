//
//  MenuItem.m
//  Outliner
//
//  Created by Yohanes Bandung on 06/12/20.
//

#import "AppDelegate.h"
#import "MenuItem.h"

@implementation MenuItem

- (void)createMenu {
    NSMenu *menubar = [[NSMenu alloc] init];
    NSMenuItem *firstMenu = [self defineFirstMenu];
    NSMenuItem *secondMenu = [self defineSecondMenu];

    [menubar addItem:firstMenu];
    [menubar addItem:secondMenu];
    
    [NSApp setMainMenu:menubar];
}

- (NSMenuItem *)defineFirstMenu {
    NSMenuItem *firstMenu = [[NSMenuItem alloc] init];
    NSMenu *firstSubmenu = [[NSMenu alloc] init];

    NSMenuItem *aboutMenuItem = [[NSMenuItem alloc] initWithTitle:@"About Outliner"
                                                           action:NULL
                                                    keyEquivalent:@""];
    NSMenuItem *preferencesMenuItem = [[NSMenuItem alloc] initWithTitle:@"Preferences..."
                                                                 action:NULL
                                                          keyEquivalent:@","];
    NSMenuItem *quitMenuItem = [[NSMenuItem alloc] initWithTitle:@"Quit Outliner"
                                                          action:@selector(terminate:)
                                                   keyEquivalent:@"q"];

    [firstSubmenu addItem:aboutMenuItem];
    [firstSubmenu addItem:preferencesMenuItem];
    [firstSubmenu addItem:[NSMenuItem separatorItem]];
    [firstSubmenu addItem:quitMenuItem];

    [firstMenu setSubmenu:firstSubmenu];

    return firstMenu;
}

- (NSMenuItem *)defineSecondMenu {
    NSMenuItem *secondMenu = [[NSMenuItem alloc] init];
    NSMenu *secondSubmenu = [[NSMenu alloc] initWithTitle:@"File"];

    NSMenuItem *newMenuItem = [[NSMenuItem alloc] initWithTitle:@"New"
                                                                 action:NULL
                                                          keyEquivalent:@"n"];
    NSMenuItem *saveMenuItem = [[NSMenuItem alloc] initWithTitle:@"Save"
                                                                 action:NULL
                                                          keyEquivalent:@"s"];
    NSMenuItem *openMenuItem = [[NSMenuItem alloc] initWithTitle:@"Open..."
                                                          action:NULL
                                                   keyEquivalent:@"o"];

    [secondSubmenu addItem:newMenuItem];
    [secondSubmenu addItem:saveMenuItem];
    [secondSubmenu addItem:openMenuItem];

    [secondMenu setSubmenu:secondSubmenu];

    return secondMenu;
}

@end
