/*
 * AppController.j
 * Demo1
 *
 * Created by You on January 4, 2012.
 * Copyright 2012, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
	@outlet CPTextField l1;
	@outlet CPTextField l2;
	@outlet CPTextField l3;
}

- (@action)buttonPress:(id)sender
{
    [l3 setObjectValue: [l1 floatValue] + [l2 floatValue]];
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
}

@end
