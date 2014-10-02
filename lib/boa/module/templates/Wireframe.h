//
//  <%= @prefixed_module %>Wireframe.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "RootWireframe.h"
#import "<%= @prefixed_module %>Presenter.h"

@class <%= @prefixed_module %>Presenter;

@interface <%= @prefixed_module %>Wireframe : NSObject

@property (nonatomic, strong) RootWireframe *rootWireframe;
@property (nonatomic, strong) <%= @prefixed_module %>Presenter *presenter;

// initialization
- (void)presentSelfFromViewController:(UIViewController *)viewController;

@end
