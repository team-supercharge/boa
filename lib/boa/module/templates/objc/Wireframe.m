//
//  <%= @prefixed_module %>Wireframe.m
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import "<%= @prefixed_module %>Wireframe.h"
#import "<%= @prefixed_module %>ViewController.h"

@interface <%= @prefixed_module %>Wireframe ()

@property (nonatomic, strong) <%= @prefixed_module %>ViewController *viewController;

@end

@implementation <%= @prefixed_module %>Wireframe

- (void)presentSelfFromViewController:(UIViewController *)viewController
{
    // save reference
    self.viewController = [[<%= @prefixed_module %>ViewController alloc] initWithNibName:@"<%= @prefixed_module %>ViewController" bundle:nil];

    // view <-> presenter
    self.presenter.userInterface = self.viewController;
    self.viewController.eventHandler = self.presenter;

    // present controller
    // *** present self with RootViewController
}

@end
