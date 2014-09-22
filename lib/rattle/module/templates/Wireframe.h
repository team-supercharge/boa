//
//  <%= @module %>Wireframe.h
//  <%= @project_name %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "RootWireframe.h"
#import "<%= @module %>Presenter.h"

@class <%= @module %>Presenter;

@interface <%= @module %>Wireframe : NSObject

@property (nonatomic, strong) RootWireframe *rootWireframe;
@property (nonatomic, strong) <%= @module %>Presenter *presenter;

// initialization
- (void)presentSelfFromViewController:(UIViewController *)viewController;

@end
