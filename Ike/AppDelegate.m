//
//  AppDelegate.m
//  Ike
//
//  Created by Corey Clayton on 2013-10-23.
//  Copyright (c) 2013 Derp Heavy Industries. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

NSMenu *theMenu;
NSStatusItem *statusItem;



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	theMenu = [[NSMenu alloc] initWithTitle:@"Its a menu"];
	[theMenu setAutoenablesItems:NO];
	
	NSMenuItem *quitItem;
		
	[theMenu addItemWithTitle:@"One" action:@selector(onOne:) keyEquivalent:@""];
	[theMenu addItemWithTitle:@"Two" action:@selector(onTwo:) keyEquivalent:@""];
	[theMenu addItemWithTitle:@"Three" action:@selector(onThree:) keyEquivalent:@""];
	
	[theMenu addItem:[NSMenuItem separatorItem]];
	
	quitItem = [theMenu addItemWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"];
	[quitItem setKeyEquivalentModifierMask:NSCommandKeyMask];
	
	
	NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
	statusItem = [statusBar statusItemWithLength:NSVariableStatusItemLength];
	
	[statusItem setImage:[NSImage imageNamed:@"menu16-3.png"]];
	[statusItem setToolTip:@"Ike v0.0.1"];
	[statusItem setHighlightMode:YES];
	[statusItem setMenu:theMenu];
	
}

- (void)onOne:(id) sender
{
	NSLog(@"Menu one");
}

- (void)onTwo:(id) sender
{
	NSLog(@"Menu two");
}

- (void)onThree:(id) sender
{
	NSLog(@"Menu three");
}

@end
