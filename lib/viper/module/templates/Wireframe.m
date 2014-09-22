//
//  <%= @module %>Wireframe.m
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import "<%= @module %>Wireframe.h"
#import "<%= @module %>ViewController.h"

@interface <%= @module %>Wireframe ()

@property (nonatomic, strong) <%= @module %>ViewController *viewController;

@end

@implementation <%= @module %>Wireframe

- (void)presentSelfFromViewController:(UIViewController *)viewController
{
    // save reference
    self.viewController = [[<%= @module %>ViewController alloc] initWithNibName:@"<%= @module %>ViewController" bundle:nil];

    // view <-> presenter
    self.presenter.userInterface = self.viewController;
    self.viewController.eventHandler = self.presenter;

    // present controller
    // *** present self with RootViewController
}

@end
