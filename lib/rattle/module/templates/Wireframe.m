//
//  <%= @module %>Wireframe.m
//  <%= @project_name %>
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
    if ([self.rootWireframe containsViewController:self.viewController])
    {
        // pop back
        [self.rootWireframe popToViewController:self.viewController fromController:viewController];
        return;
    }

    // save reference
    self.viewController = [[ListViewController alloc] initWithNibName:@"ListViewController" bundle:nil];

    // view <-> presenter
    self.presenter.userInterface = self.viewController;
    self.viewController.eventHandler = self.presenter;

    // present controller
    [self.rootWireframe pushViewController:self.viewController fromController:viewController];
}

@end
