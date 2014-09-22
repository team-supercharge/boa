//
//  <%= @project %>AppDelegate.m
//  <%= @project.downcase %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import "<%= @project %>AppDelegate.h"
#import "<%= @project %>AppDependencies.h"

@interface <%= @project %>AppDelegate ()

@property (nonatomic, strong) <%= @project %>AppDependencies *dependencies;

@end

@implementation <%= @project %>AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // initialize window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor whiteColor];

    // initialize dependencies
    <%= @project %>AppDependencies *dependencies = [[<%= @project %>AppDependencies alloc] initWithWindow:self.window];
    self.dependencies = dependencies;

    // adding RootViewController
    [self.dependencies installRootViewController];

    [_window makeKeyAndVisible];

    return YES;
}

@end
